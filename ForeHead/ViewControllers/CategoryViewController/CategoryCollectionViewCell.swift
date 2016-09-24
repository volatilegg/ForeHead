//
//  CategoryCollectionViewCell.swift
//  ForeHead
//
//  Created by Do Duc on 18/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import UIKit

class CategoryCollectionViewCell: UICollectionViewCell {
    static let reuseIdentifier = "CategoryCollectionViewCell"
    
    @IBOutlet weak var catLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func show(category: Category) {
        catLabel.text = category.name
        self.backgroundColor = category.type?.color
    }
}
