//
//  ScanViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 9/13/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanViewController: UIViewController {

    @IBOutlet weak var nameLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        //  viewDidAppear will run each time view appears. use this instead of viewDidLoad because the view isn't completely loaded yet and we want to change the label as it loads
        nameLabel.text = "Begin scanning " + athlete
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
