//
//  RestaurantTableViewCell.swift
//  SwinjectExample
//
//  Created by Rusell on 26.02.2021.
//  Copyright © 2019 Anurag Ajwani. All rights reserved.

import UIKit

class RestaurantTableViewCell: UITableViewCell {

    struct ViewData {
        let nameText: String
        let cuisinesText: String
    }

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var cuisinesLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func bind(viewData: RestaurantTableViewCell.ViewData) {
        self.nameLabel.text = viewData.nameText
        self.cuisinesLabel.text = viewData.cuisinesText
    }
    
}
