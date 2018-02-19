//
//  ViewController.swift
//  PListDemo
//
//  Created by Varun on 16/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        let array : NSArray = ["Red", "Green", "Blue"]
//
//        let dict : NSDictionary = ["name" : "Yash", "color" : array]
//
        let filePath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first! + "/myFile.plist"
//
        print(filePath)
//
//        dict.write(toFile: filePath, atomically: true)
        
        let dict = NSDictionary(contentsOfFile: filePath)
        
        print(dict!)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

