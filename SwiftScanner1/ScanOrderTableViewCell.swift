//
//  ScanOrderTableViewCell.swift
//  SwiftScanner1
//
//  Created by Jackson Hubbard on 10/7/19.
//  Copyright © 2019 Protect3d Inc. All rights reserved.
//

import UIKit

class ScanOrderTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
    @IBOutlet weak var padLabel: UILabel!

    
    // will set properties of current Pad
    func setPad(pad: Pad) {
        padLabel.text = pad.name
        
    }
}
