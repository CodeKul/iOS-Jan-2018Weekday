//
//  ViewController.swift
//  JSONParsingDemo2
//
//  Created by Varun on 22/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var txtUsername : UITextField!
    @IBOutlet var txtPassword : UITextField!

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func loginButtonPressed(_ sender : UIButton) {
        
        var req = URLRequest(url: URL(string: "https://reqres.in/api/users")!)
        req.httpBody = try! JSONSerialization.data(withJSONObject: ["name": "Harshita", "job": "Software dev"], options: [])
        req.httpMethod = "POST"
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            let result = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : String]
            
            print(result["id"]!)
        }
        dataTask.resume()
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

