
//
//  RegisterPlayerViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class RegisterPlayerViewController: UIViewController {
    
    @IBOutlet weak var nameInput: UITextField!
    @IBOutlet weak var teamInput: UITextField!
    @IBOutlet weak var positionInput: UITextField!
    @IBOutlet weak var numberInput: UITextField!
    
    
    @IBAction func registerPlayerButton (_ sender: Any) {
        let currentAthlete = Athlete(name: nameInput.text!, team: teamInput.text!, number: Int(numberInput.text!)!, position: positionInput.text!)
        
        all_athletes.append(currentAthlete)

        let madeObj = true
        if madeObj {
        nameInput.text?.removeAll()
        teamInput.text?.removeAll()
        positionInput.text?.removeAll()
        numberInput.text?.removeAll()
        }
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
