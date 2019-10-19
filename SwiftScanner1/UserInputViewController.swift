//
//  UserInputViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

//var name = ""
//var padType = ""
//var school = ""
//var team = ""
//var injuryDesc = ""
//var athleteNumber = 0






class UserInputViewController: UIViewController {
    //may also need to extend UITableViewCell but this was causing multiple inheritance error


    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var teamInput: UITextField!
    @IBOutlet weak var positionInput: UITextField!
    @IBOutlet weak var numberInput: UITextField!
    @IBOutlet weak var injuryDescInput: UITextField!
    @IBOutlet var padTypes: [UIButton]!

    
    @IBAction func beginScanButton(_ sender: Any) {
        //padType = padSelected(UIButton)     // dont know if this is right syntax
        // want to get titleLabel of button currently selected (at IndexPath of padTypes[])
        //padType = button(padTypes[IndexPath.row]).titleLabel!.text!
        //        if let button = sender as? UIButton {
        //            padType = button.title(for: .normal)!
        //        }
        //
        //        // create instance of Pad type using current user inputs
        //        let currentPad = Pad(name: nameInput.text!, padType : padType, team: teamInput.text!, injuryDesc: injuryDescInput.text!, number: Int(numberInput.text!)!, position: positionInput.text!)
        //
        //
        //        // append currentPad to global array of allPads located in GlobalVariables class
        //        all_pads.append(currentPad)
        performSegue(withIdentifier: "beginScanToInstructs", sender: self)
    }
    
    
    
    // functions to handle dropdown selection menu for padType
//    @IBAction func handleSelection(_ sender: UIButton) {
//        // handles when you click on the select pad type by expanding/hiding drop down
//        padTypes.forEach{ (button) in
//            UIView.animate(withDuration: 0.3, animations: {
//                button.isHidden = !button.isHidden
//                self.view.layoutIfNeeded()
//            })
//
//        }
//    }
//
//
//    func padSelected(_ sender: UIButton) -> String {
//        // when a pad is selected from drop down menu, this will asisgn selected padType to currentPad
//        // need to check syntax for sender.titleLabel
//        padType = sender.titleLabel!.text!
//        return padType
//    }
    
    
    
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
