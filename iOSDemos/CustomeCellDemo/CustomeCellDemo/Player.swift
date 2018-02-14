//
//  Player.swift
//  CustomeCellDemo
//
//  Created by Varun on 31/01/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import Foundation

class Player {
    
    var name : String
    var team : String
    var info : String
    var imageName : String
    
    init(name : String, team : String, info : String, imageName : String) {
        self.name = name
        self.team = team
        self.info = info
        self.imageName = imageName
    }
}
