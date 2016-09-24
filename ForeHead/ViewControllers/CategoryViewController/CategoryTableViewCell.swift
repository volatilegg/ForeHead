//
//  CategoryTableViewCell.swift
//  ForeHead
//
//  Created by Do Duc on 17/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {
    static let reuseIdentifier = "CategoryTableViewCell"
    
    @IBOutlet weak var catLabel: UILabel!
    
    func showCategory(category: Category) {
        self.catLabel?.text = category.name
        self.backgroundColor = category.type?.color
    }
}
