//
//  ScanInstructionsViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/20/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanInstructionsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let curr_pad = all_pads.last!
        let name = curr_pad.name
        let padType = curr_pad.padType
        let number = curr_pad.number
        
        instructionsMessage.text = "To scan \(name)'s \(padType) \(number) ..."
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var instructionsMessage: UITextField!
    
    
    @IBAction func beginScanButton(_ sender: Any) {
        //performSegue(withIdentifier: "instructionsToFirstScanner", sender: self)
    }
    
    // example prepare command
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // if segue.identifier == "scanNewtoUserInput" {
            //let nextViewController = segue.destination as? UserInputViewController
            // set some values to send to next VC
            // UserInputVC.athlete = ______
            
            
            //}
    
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
