//
//  Pokemon.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/19.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import Foundation

class Pokemon {
    let index: Int
    var name: String
    var evolution: String
    var types: [Type]
    var movement: [Movement]
    
    init(index: Int, name: String, evolution: String, types: [Type], movement: [Movement]) {
        self.index = index
        self.name = name
        self.evolution = evolution
        self.types = types
        self.movement = movement
    }
    
    
}
