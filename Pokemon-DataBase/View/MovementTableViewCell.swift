//
//  MovementTableViewCell.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/20.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit

class MovementTableViewCell: UITableViewCell {
    
    @IBOutlet weak var containerView: UIView!
    @IBOutlet weak var movementLabel: UILabel!
    @IBOutlet weak var levelLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func createCell(movement: Movement) {
        levelLabel.text = "Lv \(movement.level)"
        movementLabel.text = movement.name
        containerView.layer.borderColor = UIColor.gray.cgColor
        containerView.layer.borderWidth = 3
    }

}
