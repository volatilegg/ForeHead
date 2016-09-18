//
//  CategoryService.swift
//  ForeHead
//
//  Created by Do Duc on 17/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import Foundation

struct CategoryService {
    static let sharedInstance = CategoryService()
    
    let categories: [Category] = [
        Category(id: "1", name: "Pokemon", type: .nerd, list: [WordItem(word: "pikachu", result: .NotAnswer), WordItem(word: "pikachu2", result: .NotAnswer), WordItem(word: "pikachu3", result: .NotAnswer), WordItem(word: "pikachu4", result: .NotAnswer), WordItem(word: "pikachu5", result: .NotAnswer), WordItem(word: "pikachu6", result: .NotAnswer)]),
        Category(id: "2", name: "Pokemon2", type: .casual, list: [WordItem(word: "pikachu", result: .NotAnswer), WordItem(word: "pikachu2", result: .NotAnswer), WordItem(word: "pikachu3", result: .NotAnswer), WordItem(word: "pikachu4", result: .NotAnswer), WordItem(word: "pikachu5", result: .NotAnswer), WordItem(word: "pikachu6", result: .NotAnswer)]),
        Category(id: "3", name: "Pokemon3", type: .peasant, list: [WordItem(word: "pikachu", result: .NotAnswer), WordItem(word: "pikachu2", result: .NotAnswer), WordItem(word: "pikachu3", result: .NotAnswer), WordItem(word: "pikachu4", result: .NotAnswer), WordItem(word: "pikachu5", result: .NotAnswer), WordItem(word: "pikachu6", result: .NotAnswer)]),
        Category(id: "4", name: "Pokemon4", type: .shit, list: [WordItem(word: "pikachu", result: .NotAnswer), WordItem(word: "pikachu2", result: .NotAnswer), WordItem(word: "pikachu3", result: .NotAnswer), WordItem(word: "pikachu4", result: .NotAnswer), WordItem(word: "pikachu5", result: .NotAnswer), WordItem(word: "pikachu6", result: .NotAnswer)]),
        Category(id: "5", name: "Pokemon5", type: .casual, list: [WordItem(word: "pikachu", result: .NotAnswer), WordItem(word: "pikachu2", result: .NotAnswer), WordItem(word: "pikachu3", result: .NotAnswer), WordItem(word: "pikachu4", result: .NotAnswer), WordItem(word: "pikachu5", result: .NotAnswer), WordItem(word: "pikachu6", result: .NotAnswer)])
    ]
}
