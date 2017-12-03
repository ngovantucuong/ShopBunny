//
//  ImageGalleryLaucher.swift
//  ClothesShop
//
//  Created by ngovantucuong on 12/3/17.
//  Copyright © 2017 apple. All rights reserved.
//

import UIKit

class ImageGalleryLaucher: NSObject, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {

    let imageGalleryArray = ["https://uphinhnhanh.com/images/2017/11/30/TM71H15QRED_3col_M_1.jpg", "https://uphinhnhanh.com/images/2017/11/30/TM71M07QWHT_3col_M_1.jpg", "https://uphinhnhanh.com/images/2017/11/30/TM76G05OGRY_3col_M_1.jpg"]
    let cellID = "cellID"
    var cellHeight: CGFloat?
    var cellWidth: CGFloat?
    var product: Product?
    var detailController: DetailCategoryProductController?
    
    let collectionview: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        let cl = UICollectionView(frame: .zero, collectionViewLayout: layout)
        cl.backgroundColor = UIColor.white
        return cl
    }()
    
    let pageController: UIPageControl = {
        let pct = UIPageControl(frame: .zero)
        pct.translatesAutoresizingMaskIntoConstraints = false
        pct.currentPage = 0
        pct.currentPageIndicatorTintColor = UIColor.white
        pct.pageIndicatorTintColor = UIColor.lightGray.withAlphaComponent(0.8)
        return pct
    }()
    
    let dismissButton: UIButton = {
        let bt = UIButton()
        bt.translatesAutoresizingMaskIntoConstraints = false
        return bt
    }()
    
    override init() {
        super.init()
        
        collectionview.dataSource = self
        collectionview.delegate = self
        
        collectionview.alwaysBounceHorizontal = true
        collectionview.isPagingEnabled = true
        pageController.numberOfPages = imageGalleryArray.count
        
        collectionview.register(ImageGallery.self, forCellWithReuseIdentifier: cellID)
        
        let image = UIImage(named: "deleteIcon")?.withRenderingMode(.alwaysOriginal)
        dismissButton.setImage(image, for: .normal)
        dismissButton.addTarget(self, action: #selector(handleDismissController), for: .touchUpInside)
    }
    
    @objc func handleDismissController() {
        UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
            self.dismissButton.alpha = 0
            self.pageController.alpha = 0
            
            if let window = UIApplication.shared.keyWindow {
                self.collectionview.frame = CGRect(x: 0, y: window.frame.height, width: window.frame.width, height: window.frame.height)
            }
        }, completion: nil)
    }

    var backBackground: UIView?
    func showImageGalleryView() {
        if let window = UIApplication.shared.keyWindow {
            let x = UIScreen.main.bounds.width / 2.0
            let y = UIScreen.main.bounds.height / 2.0
            cellWidth = window.frame.width - 32.0
            cellHeight = window.frame.height - 97

            window.addSubview(collectionview)
            window.addSubview(dismissButton)
            window.addSubview(pageController)
            
            collectionview.frame = CGRect(x: x, y: y, width: cellWidth!, height: cellHeight!)
            dismissButton.frame = CGRect(x: cellWidth! - 32, y: 59, width: 50, height: 50)
            pageController.frame = CGRect(x: x - 14.0, y: cellHeight! - 1.0, width: 30, height: 20)

            UIView.animate(withDuration: 0.5, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 0.5, options: .curveEaseInOut, animations: {
                self.collectionview.frame = CGRect(x: 16, y: 53, width: self.cellWidth!, height: self.cellHeight!)
            }, completion: nil)
        }
    }
    
    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let index = targetContentOffset.pointee.x / collectionview.frame.width
        pageController.currentPage = Int(index)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return imageGalleryArray.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionview.dequeueReusableCell(withReuseIdentifier: cellID, for: indexPath) as! ImageGallery
        cell.imageUrl = self.imageGalleryArray[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: cellWidth!, height: cellHeight!)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
}
