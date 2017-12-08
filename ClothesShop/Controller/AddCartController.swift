//
//  AddCartController.swift
//  ClothesShop
//
//  Created by ngovantucuong on 12/5/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class AddCartController: UIViewController {

<<<<<<< HEAD
    @IBOutlet weak var imageProduct: UIImageView!
    @IBOutlet weak var nameProduct: UILabel!
    @IBOutlet weak var price: UILabel!
    @IBOutlet weak var size: DropMenuButton!
    @IBOutlet weak var colour: DropMenuButton!
    @IBOutlet weak var addToCart: UIButtonX!
    @IBOutlet weak var backButton: UIButton!
    
    var product: Product?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        handleSelectColour()
        handleSelectSize()
        
//        backButton.addTarget(self, action: #selector(handleDismissController), for: .touchUpInside)
        setBorderLayoutButton()
        nameProduct.text = product?.nameProduct
        if let imageUrl = product?.image {
            imageProduct.loadImageFromCacheWithUrlString(urlString: imageUrl)
        }
    }
    
    func setBorderLayoutButton() {
        size.layer.borderColor = UIColor(r: 229, g: 233, b: 236).cgColor
        size.layer.borderWidth = 2.0
        
        colour.layer.borderColor = UIColor(r: 229, g: 233, b: 236).cgColor
        colour.layer.borderWidth = 2.0
    }
    
    func handleSelectSize() {
        size.initMenu(["XS", "S", "M", "L", "XL"], actions: [({ () -> (Void) in
            
        }), ({ () -> (Void) in
           
        }), ({ () -> (Void) in
            
        }), ({ () -> (Void) in
            
        }), ({ () -> (Void) in
            
        })])
    }
    
    func handleSelectColour() {
        colour.initMenu(["yellow", "red", "blue"], actions: [({ () -> (Void) in
            
        }), ({ () -> (Void) in
            
        }), ({ () -> (Void) in
            
        })])
    }
    
    @IBAction func handleDismiss(_ sender: Any) {
    }
    @objc func handleDismissController() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 1, initialSpringVelocity: 0.5, options: .curveEaseOut, animations: {
            self.dismiss(animated: true, completion: nil)
        }, completion: nil)
    }
=======
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
>>>>>>> 00c0d1b84e15c521c0e748002e021658823c2988

}
