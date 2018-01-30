//
//  ViewController.swift
//  BasicControlsByCode
//
//  Created by Varun on 25/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var myLabel : UILabel?
    var myTextField : UITextField?
    var segmentedControl : UISegmentedControl?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myLabel = UILabel(frame: CGRect(x: 16, y: 20, width: 288, height: 40))
        myLabel?.text = "Codekul"
        myLabel?.textColor = #colorLiteral(red: 1, green: 0.4918614946, blue: 0.1681785809, alpha: 1)
        myLabel?.textAlignment = .center
        myLabel?.font = UIFont(name: "Arial", size: 30)
        myLabel?.backgroundColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        
        self.view.addSubview(myLabel!)
        
        let button = UIButton(frame: CGRect(x: 110, y: 70, width: 100, height: 30))
        button.setTitle("Click me!", for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1), for: .normal)
        button.setTitleColor(#colorLiteral(red: 0.9529411793, green: 0.6862745285, blue: 0.1333333403, alpha: 1), for: .highlighted)
        button.addTarget(self, action: #selector(buttonClicked), for: .touchUpInside)
        
        self.view.addSubview(button)
        
        myTextField = UITextField(frame: CGRect(x: 16, y: 110, width: 288, height: 30))
        myTextField?.placeholder = "Enter Name"
        self.view.addSubview(myTextField!)
        
        segmentedControl = UISegmentedControl(frame: CGRect(x: 16, y: 150, width: 288, height: 40))

        segmentedControl?.insertSegment(withTitle: "Red", at: 0, animated: true)
        segmentedControl?.insertSegment(withTitle: "Green", at: 1, animated: true)
        segmentedControl?.selectedSegmentIndex = 0
        segmentedControl?.addTarget(self, action: #selector(segmentedControlValueChanged), for: .valueChanged)
        
        self.view.addSubview(segmentedControl!)
    }

    @objc func buttonClicked(_ sender : UIButton) {
    
        myLabel?.text = myTextField?.text
        segmentedControl?.insertSegment(withTitle: "Blue", at: 2, animated: false)
    }
    
    @objc func segmentedControlValueChanged(_ sender : UISegmentedControl) {
        
        print(sender.selectedSegmentIndex)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

