//
//  DataService.swift
//  coder-swag
//
//  Created by Molnár Csaba on 2019. 03. 13..
//  Copyright © 2019. Molnár Csaba. All rights reserved.
//

import Foundation
class DateService {
    static let instance = DateService()
    
    private let categories = [
        Category(title: "SHIRTS", imageName: "shirts.png"),
        Category(title: "HODIES", imageName: "hoodies.png"),
        Category(title: "HATS", imageName: "hats.png"),
        Category(title: "DIGITAL", imageName: "digital.png")
    ]
    
    func getCategories() -> [Category] {
        return categories
    }
}
