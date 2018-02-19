//
//  ViewController.swift
//  XIBDemo
//
//  Created by Varun on 15/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func nextButtonPressed(_ sender : UIButton) {
        
        let sVC = SecondViewController(nibName: "SecondViewController", bundle: nil)
//        self.present(sVC, animated: true, completion: nil)
        
        self.navigationController?.pushViewController(sVC, animated: true)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

