//
//  LunarTableViewCell.swift
//  LunarOrigins
//
//  Created by Wgn on 18/04/20.
//  Copyright © 2020 Ifnyas. All rights reserved.
//

import UIKit

class LunarTableViewCell: UITableViewCell {

    @IBOutlet weak var titleLunar: UILabel!
    @IBOutlet weak var descLunar: UILabel!
    @IBOutlet weak var imgLunar: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
