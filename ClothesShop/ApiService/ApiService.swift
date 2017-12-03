//
//  ApiService.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/27/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ApiService: NSObject {

    static let shareInstance = ApiService()

    func fetchProductForUrl(url: String, complete: @escaping([Product]) -> ()) {
        
        guard let url = NSURL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: url as URL, completionHandler: {(data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
        
            guard let data = data else { return }
            
            do {
                if let jsonData = try JSONSerialization.jsonObject(with: data, options: []) as? [String: AnyObject] {
                    var products = [Product]()
                    let productDictionary = jsonData["Product"] as! [[String: Any]]
                    for dictionary in productDictionary {
                       let product = Product(dictionary: dictionary)
                        products.append(product)
                    }
                    
                        complete(products)
                }
            } catch let error {
                print(error.localizedDescription)
            }
            
            
        }).resume()
    }
}
