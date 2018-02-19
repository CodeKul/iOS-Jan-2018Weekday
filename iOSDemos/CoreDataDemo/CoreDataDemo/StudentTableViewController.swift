//
//  StudentTableViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 19/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class StudentTableViewController: UITableViewController {

    var students : [Student]?
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let req = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
        
        students = try! (appDelegate.persistentContainer.viewContext.fetch(req) as! [Student])
        
        self.tableView.reloadData()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {

        return students!.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "stuCell", for: indexPath)

        let stu = students![indexPath.row]
        
        cell.textLabel?.text = "\(stu.roll_no!) : \(stu.name!)"
        
        cell.detailTextLabel?.text = stu.marks!
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ViewController") as! ViewController
        
        vc.stu = students![indexPath.row]
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
