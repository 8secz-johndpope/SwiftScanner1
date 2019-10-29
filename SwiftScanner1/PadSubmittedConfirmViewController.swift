//
//  PadSubmittedConfirmViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/7/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class PadSubmittedConfirmViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func ordersButton(_ sender: Any) {
        //self.tabBarController?.selectedIndex = 3
        //performSegue(withIdentifier: "PadSubmittedToOrdersSegue", sender: self)
        self.loadTabBarController(atIndex: 3)


    }
    
    @IBAction func homeButton(_ sender: Any) {
        //performSegue(withIdentifier: "PadSubmittedtoHomeSegue", sender: self)
        self.loadTabBarController(atIndex: 1)
    }
    
    
    // when user presses orders button, want to segue to orders table, but need to include tab bar
    // code below allows this segue to happen
    var tabBarIndex: Int?
    
    //function that will trigger the **MODAL** segue
    private func loadTabBarController(atIndex: Int){
        self.tabBarIndex = atIndex
        self.performSegue(withIdentifier: "PadSubmittedToOrdersSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "PadSubmittedToOrdersSegue" {
            let tabbarController = segue.destination as! UITabBarController
            tabbarController.selectedIndex = self.tabBarIndex!
        }
        
        if segue.identifier == "PadSubmittedtoHomeSegue" {
            let tabbarController = segue.destination as! UITabBarController
            tabbarController.selectedIndex = self.tabBarIndex!
        }
    }
    
    
//    func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if(segue.identifier == "PadSubmittedToOrdersSegue"){
//            if let tabVC = segue.destination as? UITabBarController{
//                tabVC.selectedIndex = 3
//            }
//        }
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
