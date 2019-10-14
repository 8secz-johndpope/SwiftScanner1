//
//  PadObject.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/7/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import Foundation

class Pad {
    
    var name: String
    var padType: String
    //var school: String
    var team: String
    var injuryDesc: String
    var number: Int
    var position: String
    var orderStatus: String
    
    
    
    // when user inputs all of this info in input screen, a new pad object is created globally that stores all of its information
    init(name: String, padType: String, team: String, injuryDesc: String, number: Int, position: String ){
        self.name = name
        self.padType = padType
        //self.school = school
        self.team = team
        self.injuryDesc = injuryDesc
        self.number = number
        self.position = position
        self.orderStatus = status_options[0]    // "Received"
        
    }
}
