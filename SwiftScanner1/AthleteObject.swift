//
//  AthleteObject.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/21/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import Foundation

class Athlete {
    
    var name: String
    //var school: String
    var team: String
    var number: Int
    var position: String
    
    
    
    // when user inputs all of this info in input screen, a new athlete object is created that stores all of its information
    init(name: String, team: String, number: Int, position: String ){
        self.name = name
        //self.school = school
        self.team = team
        self.number = number
        self.position = position
        
    }

}
