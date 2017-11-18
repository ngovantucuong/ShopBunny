//
//  LoginController.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/18/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class LoginController: UIViewController {

    @IBOutlet weak var logoShop: UIImageViewX!
    @IBOutlet weak var email: UITextFieldX!
    @IBOutlet weak var password: UITextFieldX!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
    }

    private func setupLayout() {
        logoShop.backgroundColor = UIColor.white
        logoShop.layer.cornerRadius = 50
        logoShop.layer.masksToBounds = true
        
        email.layer.cornerRadius = 20
        email.layer.masksToBounds = true
        
        password.layer.cornerRadius = 20
        password.layer.masksToBounds = true
        
    }

}
