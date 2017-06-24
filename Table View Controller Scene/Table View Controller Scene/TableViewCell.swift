//
//  TableViewCell.swift
//  Table View Controller Scene
//
//  Created by Antonio on 24/6/17.
//  Copyright © 2017 DevApplication. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {
    @IBOutlet weak var txtPrecio: UILabel!
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var txtModelo: UILabel!
    @IBOutlet weak var txtMatriculacion: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
