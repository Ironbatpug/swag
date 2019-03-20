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
    
    private let hats = [
        Product(title: "Devslopes Logo Graphic Beanie", price: "$19" ,imageName: "hat01.png"),
        Product(title: "Devslopes Logo Hat Black", price: "$22" ,imageName: "hat02.png"),
        Product(title: "Devslopes Logo Hat White", price: "$23" ,imageName: "hat03.png"),
        Product(title: "Devslopes Logo Snapback", price: "$25" ,imageName: "hat04.png")
    ]
    
    private let hoodies = [
        Product(title: "Devslopes Logo Hoodies Grey", price: "$19" ,imageName: "hoodie01.png"),
        Product(title: "Devslopes Logo Hoodies Red", price: "$22" ,imageName: "hoodie02.png"),
        Product(title: "Devslopes Logo Hoodies White", price: "$23" ,imageName: "hoodie03.png"),
        Product(title: "Devslopes Logo Hoodies Black", price: "$25" ,imageName: "hoodie04.png")
    ]
    
    private let shirts = [
        Product(title: "Devslopes Logo shirt Grey", price: "$19" ,imageName: "shirt01.png"),
        Product(title: "Devslopes Logo shirt Black", price: "$22" ,imageName: "shirt02.png"),
        Product(title: "Devslopes Logo shirt White", price: "$23" ,imageName: "shirt03.png"),
        Product(title: "Devslopes Logo shirt Black", price: "$25" ,imageName: "shirt04.png"),
        Product(title: "Devslopes Logo shirt light grey", price: "$25" ,imageName: "shirt05.png")
    ]
    
    private let digital = [Product]()
    
    func getCategories() -> [Category] {
        return categories
    }
    
    func getProducts(forCategoryTitle title: String) -> [Product] {
        switch title {
        case "SHIRTS":
            return getShirt()
        case "HATS":
            return getHats()
        case "HODIES":
            return getHoodies()
        case "DIGITAL":
            return getDigitals()
        default:
            return getShirt()
        }
    }
    
    func getHats() -> [Product] {
        return hats
    }
    
    func getHoodies() -> [Product] {
        return hoodies
    }
    
    func getShirt() -> [Product] {
        return shirts
    }
    
    func getDigitals() -> [Product] {
        return digital
    }
}
