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
    var school: String
    var team: String
    var injuryDesc: String
    var athleteNumber: Integer
    
    
    // when user inputs all of this info in input screen, a new pad object is created globally that stores all of its information
    init(name: String, padType: String, school: String, team: String, injuryDesc: String, athleteNumber: Integer ){
        self.name = name
        self.padType = padType
        self.school = school
        self.team = team
        self.injuryDesc = injuryDesc
        self.athleteNumber = athleteNumber
        
    }
}
