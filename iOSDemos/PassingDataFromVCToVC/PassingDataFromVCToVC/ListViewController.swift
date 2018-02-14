//
//  ListViewController.swift
//  PassingDataFromVCToVC
//
//  Created by Varun on 07/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrStudents : [Student]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrStudents!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        let stu = arrStudents![indexPath.row]
        cell?.textLabel?.text = stu.rollNo
        cell?.detailTextLabel?.text = stu.name
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()

    }
    
}
