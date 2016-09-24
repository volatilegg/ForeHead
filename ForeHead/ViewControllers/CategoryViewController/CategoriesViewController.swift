//
//  CategoriesViewController.swift
//  ForeHead
//
//  Created by Do Duc on 17/09/16.
//  Copyright © 2016 Do Duc. All rights reserved.
//

import UIKit

class CategoriesViewController: UIViewController {
    fileprivate let toGameSegue = "kCatToPlaySegue"

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: CategoryCollectionViewCell.reuseIdentifier, bundle: nil)
        collectionView.register(nib, forCellWithReuseIdentifier: CategoryCollectionViewCell.reuseIdentifier)                
    }
    
    //MARK - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? PlayingViewController, let cat = sender as? Category {
            destination.selectedCategory = cat
        }
    }
}

extension CategoriesViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return CategoryService.sharedInstance.categories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.reuseIdentifier, for: indexPath) as! CategoryCollectionViewCell
        
        let cat = CategoryService.sharedInstance.categories[indexPath.row]
        
        cell.show(category: cat)
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let cat = CategoryService.sharedInstance.categories[indexPath.row]
        
        performSegue(withIdentifier: toGameSegue, sender: cat)
    }
}
