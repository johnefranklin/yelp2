//
//  DealsTableViewCell.swift
//  Yelp
//
//  Created by John Franklin on 9/24/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol DealsTableViewCellDelegate {
    optional func dealsTableViewCell(dealsTableViewCell : DealsTableViewCell, didChangeValue value : Bool)
}

class DealsTableViewCell: UITableViewCell {
    @IBOutlet weak var dealsLabel: UILabel!
    @IBOutlet weak var dealsSwitch: UISwitch!
    
    weak var delegate : DealsTableViewCellDelegate?
    
    @IBAction func onValueChanged(sender: UISwitch) {
        print("Deals value changed");
        if (delegate != nil) {
            delegate?.dealsTableViewCell!(self, didChangeValue: dealsSwitch.on)
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
