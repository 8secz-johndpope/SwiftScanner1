//
//  ScanExistingViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanExistingViewController: UIViewController {

    @IBOutlet weak var nameInput: UITextField!
    
    @IBOutlet weak var injuryDescInput: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    @IBAction func beginScanButton(_ sender: Any) {
        performSegue(withIdentifier: "beginScanToInstruct", sender: self)
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
