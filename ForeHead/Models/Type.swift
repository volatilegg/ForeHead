//
//  Type.swift
//  ForeHead
//
//  Created by Do Duc on 24/09/16.
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
