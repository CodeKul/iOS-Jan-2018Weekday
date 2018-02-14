//
//  SecondViewController.swift
//  StoryBoardSegueDemo
//
//  Created by Varun on 02/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet var myLabel : UILabel!
    
    var strData : String?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel.text = strData
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func backButtonPressed (_ sender : UIButton) {
        
        self.dismiss(animated: true, completion: nil)
    }
}
