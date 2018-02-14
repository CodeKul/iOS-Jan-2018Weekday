//
//  ForthViewController.swift
//  NavigatonControllerDemo
//
//  Created by Varun on 02/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ForthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func gotoSecondVC (_ sender : UIButton) {
        
        var found = false
        
        for vc in (self.navigationController?.viewControllers)! {
            if vc is SecondViewController {
                self.navigationController?.popToViewController(vc, animated: true)
                found = true
                break
            }
        }
        if !found {
            let alert = UIAlertController(title: "Codekul", message: "Second VC is not present in navigation stack", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
            self.present(alert, animated: true, completion: nil)
        }
    }
}
