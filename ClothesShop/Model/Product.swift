//
//  Product.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/27/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

struct Product {
    let nameProduct: String
    let description: String
    let price: Float
    let image: String
    
    init(dictionary: [String: Any]) {
        self.nameProduct = dictionary["name-product"] as! String
        self.description = dictionary["description"] as! String
        self.price = dictionary["price"] as! Float
        self.image = dictionary["image"] as! String
    }
}
