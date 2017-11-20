//
//  PokemonTableViewCell.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/19.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit

class PokemonTableViewCell: UITableViewCell {

    @IBOutlet weak var pokeImage: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var type1Label: UILabel!
    @IBOutlet weak var type2Label: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func createCell(pokemon: Pokemon) {
        let index = String(format: "%03d", pokemon.index)
        pokeImage.image = UIImage(named: "pm\(index)")
       
        nameLabel.text = "#\(index)  \(pokemon.name)"
        if pokemon.types.count < 2 {
            type1Label.text = pokemon.types[0].rawValue
            type1Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[0])
            type2Label.isHidden = true
        } else {
            type1Label.text = pokemon.types[0].rawValue
            type1Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[0])
            type2Label.isHidden = false
            type2Label.text = pokemon.types[1].rawValue
            type2Label.backgroundColor = GET_TYPE_COLOR(type: pokemon.types[1])
        }
    }

}
