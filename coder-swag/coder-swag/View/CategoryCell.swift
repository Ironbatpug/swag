//
//  CategoryCell.swift
//  coder-swag
//
//  Created by Molnár Csaba on 2019. 03. 13..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import UIKit

class CategoryCell: UITableViewCell {
    
    @IBOutlet weak var categoryImage: UIImageView!
    @IBOutlet weak var categoryTitle
    : UILabel!

    func updateViews(category: Category)  {
        categoryImage.image = UIImage(named: category.imageName)
        categoryTitle.text = category.title
    }

}
