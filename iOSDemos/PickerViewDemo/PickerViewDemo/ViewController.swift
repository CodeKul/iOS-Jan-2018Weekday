//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Varun on 29/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    

    private var arrData : [String]?
    private var arrColors : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = ["Yash", "Harshita", "Sahil", "Shruti"]
        arrColors = ["Blue", "Black", "Pink", "Brown", "Yellow", "Red", "Green", "Voilet", "Orange", "White"]
    
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 2
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        if component == 0 {
            return (arrData?.count)!
        }
        return (arrColors?.count)!
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if component == 0 {
            return arrData![row]
        }
        return arrColors![row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        if component == 0 {
            print("\(arrData![row])")
        }
        else {
            print("\(arrColors![row])")
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

