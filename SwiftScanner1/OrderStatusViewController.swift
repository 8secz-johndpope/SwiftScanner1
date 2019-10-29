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
    //var pads: [Pad] = []
    
    
   // @IBOutlet weak var padOrdersTable: UITableView!
    
    
    @IBOutlet var padOrdersTable: UITableView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // set this VC as delegate and data source for tableView
        //tableView.delegate = self as? UITableViewDelegate
        //tableView.dataSource = self as? UITableViewDataSource
        
        // set pads array = array we created in appendPad()
        
        //pads = appendPad()
        
        // Do any additional setup after loading the view.
    }
    
    
    
    

    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//
//        let headerView = UIView()
//        let headerCell = tableView.dequeueReusableCell(withIdentifier: "headers") as! OrderStatusHeaderTableViewCell
//        headerView.addSubview(headerCell)
//        headerCell.backgroundColor = .lightGray
//        headerView.autoresizingMask = []
//
//
//        //cell.backgroundColor = .blueColor()
//        //headercell.athleteHeader?.text = "Athlete"
//
//        return headerView
//    }
    
    
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return all_pads.count + 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        athleteHeader.text = "Athlete"
//        numberHeader.text = "Number"
//        padTypeHeader.text = "Pad Type"
//        orderStatusHeader.text = "Order Status"
//
        if indexPath.row == 0 {
            let header = tableView.dequeueReusableCell(withIdentifier: "headers") as! OrderStatusHeaderTableViewCell
            return header
        }
        else {
            let cell = tableView.dequeueReusableCell(withIdentifier: "customPadCell", for: indexPath) as! OrderStatusTableViewCell
            
            cell.athleteLabel?.text = all_pads[indexPath.row-1].name
            cell.numberLabel?.text = String(all_pads[indexPath.row-1].number)
            cell.padTypeLabel?.text = all_pads[indexPath.row-1].padType
            cell.orderStatusLabel?.text = all_pads[indexPath.row-1].orderStatus
            return cell
        }
    }
    
//    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        let header = tableView.dequeueReusableCell(withIdentifier: "headers") as! OrderStatusHeaderTableViewCell
//        return header
//    }
    
    
        
    
    // not sure about this one
        override func viewDidAppear(_ animated: Bool) {
            super.viewDidAppear(animated)
            padOrdersTable.reloadData()
            //sizeHeaderToFit()

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


//extension UITableViewController {
//    func sizeHeaderToFit() {
//        if let headerView = tableView.tableHeaderView {
//
//            headerView.setNeedsLayout()
//            headerView.layoutIfNeeded()
//
//            let height = headerView.systemLayoutSizeFitting(UILayoutFittingCompressedSize).height
//            var frame = headerView.frame
//            frame.size.height = height
//            headerView.frame = frame
//
//            tableView.tableHeaderView = headerView
//        }
//      }
//  }
