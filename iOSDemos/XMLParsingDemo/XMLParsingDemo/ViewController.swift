//
//  ViewController.swift
//  XMLParsingDemo
//
//  Created by Varun on 21/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, XMLParserDelegate, UITableViewDelegate, UITableViewDataSource {

    var parser : XMLParser?
    
    var arrData : [[String : String]]?
    var dictData : [String : String]?
    var strData : String?
    
    @IBOutlet var plantsTableView : UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        parser = XMLParser(contentsOf: URL(string: "http://www.chilkatsoft.com/xml-samples/plants.xml")!)
        parser?.delegate = self
        parser?.parse()
    }

    func parserDidStartDocument(_ parser: XMLParser) {
        print("parsing started")
    }
    
    func parserDidEndDocument(_ parser: XMLParser) {
        print("parsing ended")
    }
    
    func parser(_ parser: XMLParser, didStartElement elementName: String, namespaceURI: String?, qualifiedName qName: String?, attributes attributeDict: [String : String] = [:]) {
        
        if elementName == "CATALOG" {
            arrData = []
        }
        else if elementName == "PLANT" {
            dictData = [String:String]()
        }
        else {
            strData = ""
        }
    }
    
    func parser(_ parser: XMLParser, foundCharacters string: String) {
        
        strData?.append(string)
    }
    
    func parser(_ parser: XMLParser, didEndElement elementName: String, namespaceURI: String?, qualifiedName qName: String?) {
        
        if elementName == "CATALOG" {
            self.plantsTableView.reloadData()
        }
        else if elementName == "PLANT" {
            arrData?.append(dictData!)
        }
        else {
            dictData![elementName] = strData
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return (arrData?.count)!
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        cell?.textLabel?.text = arrData![indexPath.row]["BOTANICAL"]
        cell?.detailTextLabel?.text = arrData![indexPath.row]["PRICE"]
        
        return cell!
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

