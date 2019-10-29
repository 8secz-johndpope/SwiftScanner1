//
//  ScanHomePageViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/23/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanHomePageViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
   
    // only need this when we dont use a UINavigationConroller
    // think we want to have Navigation controller so we can have back buttons and make it easy to navigate
    // instead use prepare
    @IBAction func scanNewButton(_ sender: Any) {
        //performSegue(withIdentifier: "scanNewtoUserInput", sender: self)
        //prepare(for: "scanNewtoUserInput", sender: self)
        //prepare(for: scanNewtoUserInput, sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "scanNewtoUserInput" {
            let nextViewController = segue.destination as? UserInputViewController
                // set some values to send to next VC
                // UserInputVC.athlete = ______
            
            
            }
        if segue.identifier == "scanExistingToInfo" {
            let nextViewController = segue.destination as? ScanExistingViewController
                //set some values to send to next VC
            
            
        }
    }
    
    
    @IBAction func scanExistingButton(_ sender: Any) {
         performSegue(withIdentifier: "scanExistingToInfo", sender: self)
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
