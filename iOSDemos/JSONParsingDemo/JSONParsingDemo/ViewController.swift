//
//  ViewController.swift
//  JSONParsingDemo
//
//  Created by Varun on 22/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrData : [[String : Any]]?
    @IBOutlet var myTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        arrData = []
        
        let req = URLRequest(url: URL(string: "http://api.geonames.org/citiesJSON?north=44.1&south=-9.9&east=-22.4&west=55.2&lang=de&username=varun05")!)
        
        let dataTask = URLSession.shared.dataTask(with: req) { (data, response, error) in
            
            let result = try! JSONSerialization.jsonObject(with: data!, options: []) as! [String : Any]
            
            self.arrData = (result["geonames"] as! [[String : Any]])
            DispatchQueue.main.async {
                self.myTableView.reloadData()
            }
        }
        
        dataTask.resume()
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrData!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        let dict = arrData![indexPath.row]
        cell?.textLabel?.text = (dict["toponymName"] as! String)
        cell?.detailTextLabel?.text = "\((dict["population"] as! Int))"
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

