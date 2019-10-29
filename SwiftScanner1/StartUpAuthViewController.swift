//
//  StartUpAuthViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/23/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class StartUpAuthViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func loginButton(_ sender: Any) {
        //performSegue(withIdentifier: "loginToHome", sender: self)
            self.loadTabBarController(atIndex: 1)

    }
    
    // when user presses orders button, want to segue to orders table, but need to include tab bar
    // code below allows this segue to happen
    var tabBarIndex: Int?
    
    //function that will trigger the **MODAL** segue
    private func loadTabBarController(atIndex: Int){
        self.tabBarIndex = atIndex
        self.performSegue(withIdentifier: "loginToHome", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "loginToHome" {
            let tabbarController = segue.destination as! UITabBarController
            tabbarController.selectedIndex = self.tabBarIndex!
        }
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
