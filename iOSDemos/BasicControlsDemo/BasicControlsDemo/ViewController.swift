//
//  ViewController.swift
//  BasicControlsDemo
//
//  Created by Varun on 24/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var myTextfield: UITextField!
    
    @IBOutlet weak var mySlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        myLabel.text = myTextfield.text
    }
    
    @IBAction func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            myLabel.backgroundColor = UIColor.red
        }
        else if sender.selectedSegmentIndex == 1 {
            myLabel.backgroundColor = UIColor.green
        }
        else {
            myLabel.backgroundColor = UIColor.blue
        }
    }
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        myLabel.text = "\(sender.value)"
    }
    
    @IBAction func switchValueChanged(_ sender: UISwitch) {
        
        mySlider.isUserInteractionEnabled = sender.isOn
    }
    
    
    
    
    
    
    
    
    


}

