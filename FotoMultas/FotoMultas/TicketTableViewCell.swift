//
//  TicketTableViewCell.swift
//  FotoMultas
//
//  Created by S209e19 on 23/09/16.
//  Copyright © 2016 UdeM. All rights reserved.
//

import UIKit

class TicketTableViewCell: UITableViewCell {
    
    //MARK: - Properties
    
    @IBOutlet weak var ticketImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    
    //MARK: - Lifecycle
    override func
        awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
