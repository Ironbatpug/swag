//
//  ProductVC.swift
//  coder-swag
//
//  Created by Molnár Csaba on 2019. 03. 20..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class ProductsVC: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    @IBOutlet weak var productsCollection : UICollectionView!
    
   private(set) public var products = [Product]()

    override func viewDidLoad() {
        super.viewDidLoad()
        productsCollection.dataSource = self
        productsCollection.delegate = self
    }
    
    func initProducts(category: Category) {
        products = DateService.instance.getProducts(forCategoryTitle: category.title)
        navigationItem.title = category.title
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return products.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProductsVC", for: indexPath) as? ProductsCell{
            let product = products[indexPath.row]
            cell.updateViews(product: product)
            return cell
        } else {
            return ProductsCell()
        }
    }
}
