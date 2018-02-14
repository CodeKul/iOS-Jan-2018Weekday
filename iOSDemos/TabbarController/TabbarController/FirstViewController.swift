//
//  FirstViewController.swift
//  TabbarController
//
//  Created by Varun on 01/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("FirstViewController : viewDidLoad")
    }

    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)
        print("FirstViewController : viewWillAppear")

    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("FirstViewController : viewDidAppear")

    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        print("FirstViewController : viewWillDisappear")

    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        print("FirstViewController : viewDidDisappear")

    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
