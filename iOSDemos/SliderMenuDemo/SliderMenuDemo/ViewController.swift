//
//  ViewController.swift
//  SliderMenuDemo
//
//  Created by Varun on 14/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menuLeadingConstraints: NSLayoutConstraint!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func edgePanGesture(_ sender: UIScreenEdgePanGestureRecognizer) {
        if menuLeadingConstraints.constant == -200 {
            menuLeadingConstraints.constant = 0
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func menuButtonPressed (_ sender : UIButton) {
        
        if menuLeadingConstraints.constant == 0 {
            menuLeadingConstraints.constant = -200
        }
        else {
            menuLeadingConstraints.constant = 0
        }
        
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func tapGesture(_ sender: UITapGestureRecognizer) {
        if menuLeadingConstraints.constant == 0 {
            menuLeadingConstraints.constant = -200
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    @IBAction func leftSwipped(_ sender : UISwipeGestureRecognizer) {
        if menuLeadingConstraints.constant == 0 {
            menuLeadingConstraints.constant = -200
        }
        UIView.animate(withDuration: 0.3) {
            self.view.layoutIfNeeded()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

