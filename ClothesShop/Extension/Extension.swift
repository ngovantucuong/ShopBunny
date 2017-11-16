//
//  Extension.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/16/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

extension UITextField {
    func setBottomLine(borderColor: UIColor, textColor: UIColor, placeHolderColor: UIColor, placeHolder: String) {
        self.borderStyle = UITextBorderStyle.none
        self.backgroundColor = UIColor.clear
        let height: CGFloat = 1.0
        let borderLine = UIView()
        borderLine.frame = CGRect(x: 0, y: (self.frame.height) - height, width: self.frame.width, height: height)
        self.textColor = textColor
        borderLine.backgroundColor = borderColor
        self.addSubview(borderLine)
        self.attributedPlaceholder = NSAttributedString(string: placeHolder, attributes: [NSAttributedStringKey.foregroundColor: placeHolderColor])
    }
}
