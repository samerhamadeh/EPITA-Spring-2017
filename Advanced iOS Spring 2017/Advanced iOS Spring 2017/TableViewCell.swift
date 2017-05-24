//
//  TableViewCell.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 5/24/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var city_image: UIImageView!
    @IBOutlet weak var city_name: UILabel!
    @IBOutlet weak var city_temp: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
