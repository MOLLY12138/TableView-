//
//  MYTableViewCell.swift
//  第八次上机作业Table View
//
//  Created by apple on 2018/11/19.
//  Copyright © 2018年 mlj. All rights reserved.
//

import UIKit

class MYTableViewCell: UITableViewCell {

    @IBOutlet weak var myLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
