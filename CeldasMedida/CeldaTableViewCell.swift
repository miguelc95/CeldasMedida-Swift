//
//  CeldaTableViewCell.swift
//  CeldasMedida
//
//  Created by Miguel Cuellar on 2/27/17.
//  Copyright © 2017 Miguel Cuellar. All rights reserved.
//

import UIKit

class CeldaTableViewCell: UITableViewCell {
    @IBOutlet weak var ImagenFoto: UIImageView!
    @IBOutlet weak var TFPrecio: UITextField!
    @IBOutlet weak var TFCapacidad: UITextField!
    @IBOutlet weak var TFTipo: UITextField!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
