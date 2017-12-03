//
//  ProductCell.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/30/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ProductCell: BaseCell {
    
    override func setupViews() {
        setupLayout()
    }
    
    let imageProduct: UIImageView = {
        let imv = UIImageView()
        imv.translatesAutoresizingMaskIntoConstraints = false
        imv.contentMode = .scaleAspectFill
        imv.clipsToBounds = true
        return imv
    }()
    
    let nameProduct: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.font = UIFont.systemFont(ofSize: 16)
        return lb
    }()
    
    let price: UILabel = {
        let lb = UILabel()
        lb.translatesAutoresizingMaskIntoConstraints = false
        lb.textColor = UIColor(r: 121, g: 124, b: 135)
        lb.font = UIFont.systemFont(ofSize: 12)
        return lb
    }()
    
    let heartLabel: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        let image = UIImage(named: "heartIcon")
        bt.setImage(image, for: .normal)
        return bt
    }()
    
    var product: Product? {
        didSet {
            nameProduct.text = product?.nameProduct
            price.text = "$\(product!.price)"
            imageProduct.loadImageFromCacheWithUrlString(urlString: (product?.image)!)
        }
    }
    
    var heightDescriptionProduct: NSLayoutConstraint?
    
    func setupLayout() {
        addSubview(imageProduct)
        addSubview(nameProduct)
        addSubview(price)
        addSubview(heartLabel)
        
        // set constraint
        imageProduct.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        imageProduct.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        imageProduct.heightAnchor.constraint(equalToConstant: 197).isActive = true
        imageProduct.widthAnchor.constraint(equalTo: self.widthAnchor).isActive = true
        
        nameProduct.topAnchor.constraint(equalTo: imageProduct.bottomAnchor, constant: 10).isActive = true
        nameProduct.leftAnchor.constraint(equalTo: imageProduct.leftAnchor, constant: 8).isActive = true
        nameProduct.heightAnchor.constraint(equalToConstant: 30).isActive = true
        nameProduct.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        
        price.topAnchor.constraint(equalTo: nameProduct.bottomAnchor, constant: 1).isActive = true
        price.leftAnchor.constraint(equalTo: nameProduct.leftAnchor).isActive = true
        price.heightAnchor.constraint(equalToConstant: 20).isActive = true
        price.widthAnchor.constraint(equalToConstant: 180).isActive = true
        
        heartLabel.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -8).isActive = true
        heartLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 8).isActive = true
        heartLabel.heightAnchor.constraint(equalToConstant: 30).isActive = true
        heartLabel.widthAnchor.constraint(equalToConstant: 30).isActive = true
    }
}
