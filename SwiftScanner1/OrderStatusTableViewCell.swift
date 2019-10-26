//
//  OrderStatusTableViewCell.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/26/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class OrderStatusTableViewCell: UITableViewCell {

    @IBOutlet weak var athleteLabel: UILabel!
    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var padTypeLabel: UILabel!
    @IBOutlet weak var orderStatusLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
