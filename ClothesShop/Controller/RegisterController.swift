//
//  RegisterController.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/16/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class RegisterController: UIViewController {

    @IBOutlet weak var password: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var username: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setLayoutRegister()
    }

    // set layout for register
    private func setLayoutRegister() {
        username.setBottomLine(borderColor: UIColor.white, textColor: UIColor.white, placeHolderColor: UIColor.white, placeHolder: "Enter your name...")
        email.setBottomLine(borderColor: UIColor.white, textColor: UIColor.white, placeHolderColor: UIColor.white, placeHolder: "Enter address email...")
        password.setBottomLine(borderColor: UIColor.white, textColor: UIColor.white, placeHolderColor: UIColor.white, placeHolder: "Please enter password...")
    }
    

}
