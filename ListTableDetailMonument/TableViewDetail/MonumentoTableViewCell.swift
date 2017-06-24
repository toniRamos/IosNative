//
//  MonumentoTableViewCell.swift
//  TableViewDetail
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class MonumentoTableViewCell: UITableViewCell {
    @IBOutlet weak var foto: UIImageView!

    @IBOutlet weak var txtTitulo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
