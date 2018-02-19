//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Varun on 19/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet var txtRollNo : UITextField!
    @IBOutlet var txtName : UITextField!
    @IBOutlet var txtMarks : UITextField!
    @IBOutlet var saveUpdateButton : UIButton!

    var stu : Student?
    
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if stu != nil {
            
            txtRollNo.text = stu?.roll_no
            txtName.text = stu?.name
            txtMarks.text = stu?.marks
            txtRollNo.isEnabled = false
            saveUpdateButton.setTitle("Update", for: .normal)
        }
        else {
            txtRollNo.text = ""
            txtName.text = ""
            txtMarks.text = ""
            txtRollNo.isEnabled = true
            saveUpdateButton.setTitle("Save", for: .normal)
        }
    }

    @IBAction func saveButtonClicked(_ sender : UIButton) {
    
        if sender.title(for: .normal) == "Save" {
            let stu = NSEntityDescription.insertNewObject(forEntityName: "Student", into: appDelegate.persistentContainer.viewContext) as! Student
            
            stu.roll_no = txtRollNo.text
            stu.name = txtName.text
            stu.marks = txtMarks.text
            
            appDelegate.saveContext()
        }
        else {
            
            let req = NSFetchRequest<NSFetchRequestResult>(entityName: "Student")
            
            req.predicate = NSPredicate(format: "roll_no == %@", txtRollNo.text!)
            
            let s = try! (appDelegate.persistentContainer.viewContext.fetch(req) as! [Student]).first

            s?.name = txtName.text
            s?.marks = txtMarks.text
            
            appDelegate.saveContext()
            
        }
        self.navigationController?.popViewController(animated: true)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

