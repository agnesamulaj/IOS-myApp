//
//  CellTableViewCell.swift
//  myApp
//
//  Created by Agnese Mulaj on 18/07/2019.
//  Copyright © 2019 IOS. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {
    
    

    @IBOutlet weak var lbl: UILabel!
    @IBOutlet weak var img: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
