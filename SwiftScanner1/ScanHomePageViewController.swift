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
    
    @IBAction func scanNewButton(_ sender: Any) {
        performSegue(withIdentifier: scanNewToInfo, sender: self)
    }
    
    @IBAction func scanExistingButton(_ sender: Any) {
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