//
//  ConfirmScanViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/6/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ConfirmScanViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func redoScanButton(_ sender: UIButton) {
        performSegue(withIdentifier: "redoScanFromConfirmSegue", sender: self)
    }
    
    @IBAction func confirmScanButton(_ sender: Any) {
        performSegue(withIdentifier: "confirmToExtraInfoSegue", sender: self)

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
