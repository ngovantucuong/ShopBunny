//
//  LoginController.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/18/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit
import GoogleSignIn
import Firebase

class LoginController: UIViewController, GIDSignInUIDelegate {
   
    @IBOutlet weak var logoShop: UIImageViewX!
    @IBOutlet weak var email: UITextFieldX!
    @IBOutlet weak var password: UITextFieldX!
    
    @IBOutlet weak var SignIn: GIDSignInButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setupLayout()
        GIDSignIn.sharedInstance().uiDelegate = self
        
        SignIn.addTarget(self, action: #selector(handleSigInGmail), for: .touchUpInside)
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
    
    @objc func handleSigInGmail() {
        GIDSignIn.sharedInstance().signIn()
    }

}
