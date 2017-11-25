//
//  User.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/25/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class User: NSObject {
    var name: String
    var email: String
    var profileImage: String
    
    init(dictionary: [String: AnyObject]) {
        self.name = dictionary["name"] as! String
        self.email = dictionary["email"] as! String
        self.profileImage = dictionary["profileImageUrl"] as! String
    }
}
