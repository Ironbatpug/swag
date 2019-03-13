//
//  Category.swift
//  coder-swag
//
//  Created by Molnár Csaba on 2019. 03. 13..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import Foundation

struct Category {
    private(set) var title: String
    private(set) var imageName: String
    
    init(title: String, imageName: String) {
        self.title = title
        self.imageName = imageName
    }
}
