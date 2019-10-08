//
//  UserInputViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

var school = ""
var team = ""
var athlete = ""
var injuryDesc = ""

class UserInputViewController: UIViewController, UITableViewCell {

    
    @IBOutlet weak var inputSchool: UITextField!
    @IBOutlet weak var inputTeam: UITextField!
    @IBOutlet weak var inputAthlete: UITextField!
    @IBOutlet weak var inputInjuryDesc: UITextField!
    
    
    
    
    @IBAction func beginScan(_ sender: Any) {
        if(inputSchool.text != "") {
            school = inputSchool.text!
        }
        
        if(inputTeam.text != "") {
            team = inputTeam.text!
            
        }
        
        if(inputAthlete.text != "") {
            athlete = inputAthlete.text!
        }
        
        if(inputInjuryDesc.text != "") {
            injuryDesc = inputInjuryDesc.text!
        }
        
        performSegue(withIdentifier: "infoToInstructions", sender: self)

    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBOutlet var padTypes: [UIButton]!
    
    @IBAction func handleSelection(_ sender: UIButton) {
        // handles when you click on the select pad type by expanding/hiding drop down
        padTypes.forEach{ (button) in
            UIView.animate(withDuration: 0.3, animations: {
                button.isHidden = !button.isHidden
                self.view.layoutIfNeeded()
            })
            
        }
    }
    
    
    @IBAction func citySelected(_ sender: UIButton) {
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
