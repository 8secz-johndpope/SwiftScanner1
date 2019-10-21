//
//  InstructionsViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/15/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class InstructionsViewController: UIViewController {

    
    

    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func confirmInstructions(_ sender: Any) {
        performSegue(withIdentifier: "instructionsToFirstScanner", sender: self)
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
