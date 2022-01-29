//
//  MyTableViewCell.swift
//  Table
//
//  Created by Seo on 2022/01/29.
//

import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myLable: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
