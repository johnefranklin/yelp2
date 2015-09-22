//
//  BusinessTableViewCell.swift
//  Yelp
//
//  Created by John Franklin on 9/19/15.
//  Copyright © 2015 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessTableViewCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var distanceLabel: UILabel!
    @IBOutlet weak var reviewImageView: UIImageView!
    @IBOutlet weak var reviewsLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var categoriesLabel: UILabel!
    
    var business : Business! {
        didSet {
            nameLabel.text = business.name
            thumbImageView.setImageWithURL(business.imageURL)
            distanceLabel.text = business.distance
            reviewImageView.setImageWithURL(business.ratingImageURL)
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            addressLabel.text = business.address
            categoriesLabel.text = business.categories
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        distanceLabel.preferredMaxLayoutWidth = distanceLabel.frame.size.width
        reviewsLabel.preferredMaxLayoutWidth = reviewsLabel.frame.size.width
        addressLabel.preferredMaxLayoutWidth = addressLabel.frame.size.width
        categoriesLabel.preferredMaxLayoutWidth = categoriesLabel.frame.size.width
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.preferredMaxLayoutWidth = nameLabel.frame.size.width
        distanceLabel.preferredMaxLayoutWidth = distanceLabel.frame.size.width
        reviewsLabel.preferredMaxLayoutWidth = reviewsLabel.frame.size.width
        addressLabel.preferredMaxLayoutWidth = addressLabel.frame.size.width
        categoriesLabel.preferredMaxLayoutWidth = categoriesLabel.frame.size.width
        
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
