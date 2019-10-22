//
//  OrderStatusViewController.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/6/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class OrderStatusViewController: UITableViewController {
    
     
    // initialize an empty array of type Pad
    // as orders come in, add pads to this
    var pads: [Pad] = []
    
    @IBOutlet weak var padOrdersTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set this VC as delegate and data source for tableView
        //tableView.delegate = self as? UITableViewDelegate
        //tableView.dataSource = self as? UITableViewDataSource
        
        // set pads array = array we created in appendPad()
        
        //pads = appendPad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pads.count
    }
   
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "customPadCell", for: indexPath)
        cell.textLabel?.text = pads[indexPath.item].name
        return cell
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        padOrdersTable.reloadData()
    }
    
    
    
    
    // appendPad will return [] of type Pad which stores all orders
//    func appendPad() -> [Pad] {
//        var tempPads: [Pad] = []
//
//        //add pads to tempPad []
//        let pad1 = Pad(name: <#T##String#>, padType: <#T##String#>)
//        //...
//
//        tempPads.append(pad1)
//        // ...
//
//        return tempPads
//
//
//
//    }
//
//}
//
//
//extension OrderStatusViewController: UITableViewDataSource, UITableViewDelegate {
//
//    // sets how many rows in table we need = # pads
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return pads.count
//    }
//
//
//    // confiures each cell- called each time we add a cell
//    // returns a UITableViewCell
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        // get pad at correct index
//        let pad = pads[indexPath.row]
//
//        let cell = tableView.dequeueReusableCell(withIdentifier: "PadCell") as! ScanOrderTableViewCell
//        cell.setPad(pad: <#T##Pad#>)
//
//        return cell
//    }
//
//
//
    
}
