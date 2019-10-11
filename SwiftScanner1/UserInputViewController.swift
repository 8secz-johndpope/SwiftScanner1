//
//  UserInputViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

var name = ""
var padType = ""
var school = ""
var team = ""
var injuryDesc = ""
var athleteNumber = 0






class UserInputViewController: UIViewController, UITableViewCell {


    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var teamInput: UITextField!
    @IBOutlet weak var positionInput: UITextField!
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var injuryDescInput: UITextField!
    @IBOutlet var padTypes: [UIButton]!

    
    @IBAction func beginScan(_ sender: Any) {
        
        // create instance of Pad type using current user inputs
        let currentPad = Pad()
        currentPad.name = nameInput
        currentPad.team = teamInput
        currentPad.position = positionInput
        currentPad.number = numberInput
        currentPad.injuryDesc = injuryDescInput
        
        
        // functions to handle dropdown selection menu for padType
        @IBAction func handleSelection(_ sender: UIButton) {
            // handles when you click on the select pad type by expanding/hiding drop down
            padTypes.forEach{ (button) in
                UIView.animate(withDuration: 0.3, animations: {
                    button.isHidden = !button.isHidden
                    self.view.layoutIfNeeded()
                })
                
            }
        }
        
        
        @IBAction func padSelected(_ sender: UIButton) {
            // when a pad is selected from drop down menu, this will asisgn selected padType to currentPad
            // need to check syntax for sender.titleLabel
            currentPad.padType = sender.titleLabel
        }
        
        
        // append currentPad to global array of allPads located in GlobalVariables class
        GlobalVariables.all_pads.append(currentPad)
        
        performSegue(withIdentifier: "infoToInstructions", sender: self)


    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    
    
    
    
    
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
