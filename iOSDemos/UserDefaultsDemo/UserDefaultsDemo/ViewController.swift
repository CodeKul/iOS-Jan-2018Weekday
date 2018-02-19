//
//  ViewController.swift
//  UserDefaultsDemo
//
//  Created by Varun on 16/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var myLbl : UILabel!
    @IBOutlet var myTxt : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        getDataFromUDSetDataToLbl()
    }

    @IBAction func saveButtonClicked(_ sender : UIButton) {
        
        UserDefaults.standard.set(myTxt.text, forKey: "myData")
        UserDefaults.standard.synchronize()
        
        getDataFromUDSetDataToLbl()
    }
    
    func getDataFromUDSetDataToLbl() {
        
        guard UserDefaults.standard.value(forKey: "myData") != nil else {
            
            myLbl.text = ""
            return
        }
        myLbl.text = (UserDefaults.standard.value(forKey: "myData") as! String)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        return textField.resignFirstResponder()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

