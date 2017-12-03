//
//  ImageGallery.swift
//  ClothesShop
//
//  Created by ngovantucuong on 12/3/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ImageGallery: BaseCell {
    
    let imageView: UIImageView = {
        let imv = UIImageView()
        imv.translatesAutoresizingMaskIntoConstraints = false
        imv.contentMode = .scaleAspectFill
        imv.clipsToBounds = true
        return imv
    }()
    
    var imageUrl: String? {
        didSet {
            imageView.loadImageFromCacheWithUrlString(urlString: imageUrl!)
        }
    }
    
    override func setupViews() {
        super.setupViews()
        
        addSubview(imageView)
        
        addConstrantWithFormat(format: "H:|[v0]|", views: imageView)
        addConstrantWithFormat(format: "V:|[v0]|", views: imageView)
    }
}
