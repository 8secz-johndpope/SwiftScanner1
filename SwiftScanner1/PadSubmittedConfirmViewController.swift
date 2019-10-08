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
        performSegue(withIdentifier: "PadSubmittedToOrdersSegue", sender: self)

    }
    
    @IBAction func homeButton(_ sender: Any) {
        performSegue(withIdentifier: "PadSubmittedtoHomeSegue", sender: self)

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
