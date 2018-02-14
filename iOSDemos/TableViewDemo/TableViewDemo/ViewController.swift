//
//  ViewController.swift
//  TableViewDemo
//
//  Created by Varun on 30/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    private var arrNames : [String]?
    private var arrColor : [String]?

    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrNames = ["Yash", "Harshita", "Sahil", "Shruti", "Varun", "Mayur", "Milan", "Aniruddha", "Nikhil", "Abhijeet", "John"]
        arrColor = ["Red", "Green", "Blue", "Pink", "Yellow", "Black", "White"]
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if section == 0 {
            return arrColor!.count
        }
        return arrNames!.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return section == 0 ? "Colors" : "Names"
        
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        
        let header = UILabel(frame: CGRect(x: 0, y: 0, width: 320, height: 30))
        header.text = section == 0 ? "Colors" : "Names"
        header.textColor = UIColor.red
        header.backgroundColor = UIColor.lightGray
        return header
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        if indexPath.section == 0 {
            cell?.textLabel?.text = arrColor![indexPath.row]
        }
        else {
            cell?.textLabel?.text = arrNames![indexPath.row]
        }
        cell?.detailTextLabel?.text = "\(indexPath.row)"
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        if indexPath.section == 0 {
            print(arrColor![indexPath.row])
        }
        else {
            print(arrNames![indexPath.row])
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

