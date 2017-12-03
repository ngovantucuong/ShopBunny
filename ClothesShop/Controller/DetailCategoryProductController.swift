//
//  DetailCategoryProductController.swift
//  ClothesShop
//
//  Created by ngovantucuong on 12/3/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class DetailCategoryProductController: UIViewController {

    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var descriptionProduct: UILabel!
    @IBOutlet weak var price: UILabel!
    
    var product: Product?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        showLayout()
        
        imageProduct.isUserInteractionEnabled = true
        imageProduct.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleSwipeImage)))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.title = "home"
//        self.navigationController?.isNavigationBarHidden = false
//        self.tabBarController?.tabBar.isHidden = false
    }

    func showLayout() {
        imageProduct.loadImageFromCacheWithUrlString(urlString: (product?.image)!)
        nameProduct.text = product?.nameProduct
        descriptionProduct.text = product?.description
        price.text = "$\(String(describing: product!.price))"
    }
    
    lazy var imageGalleryLaucher: ImageGalleryLaucher = {
        let igr = ImageGalleryLaucher()
        igr.detailController = self
        return igr
    }()
 
    @objc func handleSwipeImage() {
        imageGalleryLaucher.showImageGalleryView()
    }

}
