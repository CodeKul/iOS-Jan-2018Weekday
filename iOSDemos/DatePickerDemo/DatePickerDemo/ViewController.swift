//
//  ViewController.swift
//  DatePickerDemo
//
//  Created by Varun on 29/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var myLabel : UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func datePicked(_ sender: UIDatePicker) {
        
        let df = DateFormatter()
        df.dateFormat = "E, d MMM yyyy HH:mm:ss Z"
        
        myLabel.text = df.string(from: sender.date)
    }
    
}

