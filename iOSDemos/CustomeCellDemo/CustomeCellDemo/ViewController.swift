//
//  ViewController.swift
//  CustomeCellDemo
//
//  Created by Varun on 31/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    var arrPlayres : [Player]?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let virat = Player(name: "Virat", team: "RCB", info: "Right hand batsman, Captain, Highest paid player", imageName: "virat")
        
        let dhoni = Player(name: "Dhoni", team: "CSK", info: "Wicket keeper, Hard hitter, Helicopter shot", imageName: "dhoni")
        
        let rohit = Player(name: "Rohit", team: "MI", info: "Shot timing, Highest scorer", imageName: "rohit")
        
        arrPlayres = [virat, dhoni, rohit]
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrPlayres!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "playerCell") as! MyTableViewCell
        
        cell.setData(player: arrPlayres![indexPath.row])
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

