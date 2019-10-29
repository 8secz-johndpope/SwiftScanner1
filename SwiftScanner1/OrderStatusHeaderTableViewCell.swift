//
//  OrderStatusHeaderTableViewCell.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/27/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class OrderStatusHeaderTableViewCell: UITableViewCell {
    
    @IBOutlet weak var athleteHeader: UILabel!
    @IBOutlet weak var numberHeader: UILabel!
    @IBOutlet weak var padTypeHeader: UILabel!
    @IBOutlet weak var orderStatusHeader: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
