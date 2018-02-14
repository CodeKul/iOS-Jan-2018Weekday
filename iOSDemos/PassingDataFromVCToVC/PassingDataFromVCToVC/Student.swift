//
//  Student.swift
//  PassingDataFromVCToVC
//
//  Created by Varun on 07/02/18.
//  Copyright © 2018 Codekul. All rights reserved.
//

import Foundation

class Student {
    
    var rollNo : String
    var name : String
    
    init() {
        rollNo = ""
        name = ""
    }
    
    init(rollNo: String, name: String) {
        
        self.rollNo = rollNo
        self.name = name
    }
}
