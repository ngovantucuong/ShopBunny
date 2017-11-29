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
    
    func fetchProduct(complete: @escaping([Product]) -> ()) {
        
    }
    
    func fetchProductForUrl(url: String, complete: @escaping([Product]) -> ()) {
        
        guard let url = NSURL(string: url) else {
            return
        }
        
        URLSession.shared.dataTask(with: url as URL, completionHandler: {(data, response, error) in
            if error != nil {
                print(error!.localizedDescription)
            }
            
            
            
        }).resume()
    }
}
