//
//  TableViewCell.swift
//  MVC_edmo
//
//  Created by Ngoc on 7/8/19.
//  Copyright © 2019 Ngoc. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgDetail: UIImageView!
    
    @IBOutlet weak var lblPhone: UILabel!
    @IBOutlet weak var lblName: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
