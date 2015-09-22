//
//  SwitchTableViewCell.swift
//  Yelp
//
//  Created by John Franklin on 9/21/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SwitchCellDelegate {
    optional func switchTableViewCell(switchTableViewCell : SwitchTableViewCell, didChangeValue value : Bool)
}

class SwitchTableViewCell: UITableViewCell {

    @IBOutlet weak var switchLabel: UILabel!
    @IBOutlet weak var onSwitch: UISwitch!
    
    weak var delegate : SwitchCellDelegate?
    
    @IBAction func switchValueChanged(sender: UISwitch) {
        print("switch value changed")
        if (delegate != nil) {
            delegate?.switchTableViewCell!(self, didChangeValue: onSwitch.on)
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
