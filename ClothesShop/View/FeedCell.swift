//
//  FeedCell.swift
//  ClothesShop
//
//  Created by ngovantucuong on 11/27/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class FeedCell: BaseCell, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    let cellID = "cellID"
    
    lazy var collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        let cl = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cl.translatesAutoresizingMaskIntoConstraints = false
        cl.backgroundColor = UIColor.white
        cl.dataSource = self
        cl.delegate = self
        return cl
    }()
    
    override func setupViews() {
        addSubview(collectionview)
        collectionview.register(UICollectionViewCell.self, forCellWithReuseIdentifier: cellID)
        
        addConstrantWithFormat(format: "H:|[v0]|", views: collectionview)
        addConstrantWithFormat(format: "V:|[v0]|", views: collectionview)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath)
        cell.backgroundColor = UIColor.blue
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let pading: CGFloat = 10
        let collectionviewSize = self.collectionview.frame.width - pading
        return CGSize(width: collectionviewSize / 2, height: collectionviewSize / 2)
    }
}
