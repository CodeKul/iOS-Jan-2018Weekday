//
//  ThirdViewController.swift
//  NavigatonControllerDemo
//
//  Created by Varun on 02/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func goToFirstVC(_ sender : UIButton) {
    
        self.navigationController?.popToRootViewController(animated: true)
    }
    
}
