//
//  MainViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBAction func startScan(_ sender: Any) {
        
        performSegue(withIdentifier: "mainToInfoSegue", sender: self)
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
