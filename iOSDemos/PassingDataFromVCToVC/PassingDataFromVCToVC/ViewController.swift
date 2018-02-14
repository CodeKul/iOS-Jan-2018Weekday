//
//  ViewController.swift
//  PassingDataFromVCToVC
//
//  Created by Varun on 07/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var arrData : [Student]?
    
    @IBOutlet var txtRollNo : UITextField!
    @IBOutlet var txtName : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = Array<Student>()
    }

    @IBAction func addButtonClicked(_ sender : UIButton) {
        
        let stu = Student(rollNo: txtRollNo.text!, name: txtName.text!)
        arrData?.append(stu)
        
        txtRollNo.text = ""
        txtName.text = ""
    }
    
    @IBAction func showButtonClicked(_ sender : UIButton) {
        
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "ListViewController") as! ListViewController

        vc.arrStudents = arrData!
        
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

