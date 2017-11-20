//
//  Type.swift
//  Pokemon-DataBase
//
//  Created by Yi-Yun Chen on 2017/11/20.
//  Copyright © 2017年 Yi-Yun Chen. All rights reserved.
//

import UIKit
enum Type: String {
    case Grass = "草"
    case Poison = "毒"
    case Fire = "火"
    case Fly = "飛行"
    case Water = "水"
    case Insect = "蟲"
    case Normal = "一般"
    case Thunder = "電"
    case Ground = "地面"
    case Fairy = "妖精"
}

func GET_TYPE_COLOR(type: Type) -> UIColor {
    switch type {
    case .Grass:
        return UIColor(red: 118/255, green: 205/255, blue: 84/255, alpha: 1.0)
    case .Poison:
        return UIColor(red: 170/255, green: 85/255, blue: 153/255, alpha: 1.0)
    case .Fire:
        return UIColor(red: 255/255, green: 68/255, blue: 34/255, alpha: 1.0)
    case .Fly:
        return UIColor(red: 101/255, green: 153/255, blue: 255/255, alpha: 1.0)
    case .Water:
        return UIColor(red: 51/255, green: 153/255, blue: 255/255, alpha: 1.0)
    case .Insect:
        return UIColor(red: 170/255, green: 188/255, blue: 35/255, alpha: 1.0)
    case .Normal:
        return UIColor(red: 186/255, green: 186/255, blue: 169/255, alpha: 1.0)
    case .Thunder:
        return UIColor(red: 253/255, green: 202/255, blue: 50/255, alpha: 1.0)
    case .Ground:
        return UIColor(red: 209/255, green: 177/255, blue: 81/255, alpha: 1.0)
    case .Fairy:
        return UIColor(red: 233/255, green: 155/255, blue: 233/255, alpha: 1.0)
    default:
        return UIColor(red: 0/255, green: 0/255, blue: 0/255, alpha: 1.0)
    }
}
