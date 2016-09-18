//
//  Category.swift
//  ForeHead
//
//  Created by Do Duc on 17/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import UIKit

enum Type: UInt {
    case nerd = 0
    case casual
    case peasant
    case shit
    
    var color: UIColor {
        switch self {
        case .nerd:
            return UIColor.yellow
        case .casual:
            return UIColor.blue
        case .peasant:
            return UIColor.red
        default:
            return UIColor.green
        }
    }
}

enum Result: Int {
    case NotAnswer = 0
    case Wrong = 1
    case Right = 2
}

struct WordItem {
    var word: String?
    var result: Result?
}

struct Category {
    var id: String?
    var name: String?
    var type: Type?
    var list: [WordItem]?
}
