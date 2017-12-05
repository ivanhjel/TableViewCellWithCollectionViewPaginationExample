//
//  RecommendedTableViewCell.swift
//  CollectionViewPagination
//
//  Created by Ivan Hjelmeland on 04/12/2017.
//  Copyright © 2017 Aboveapps. All rights reserved.
//

import UIKit

class TestTableViewCell: UITableViewCell, UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    @IBOutlet weak var collectionView: UICollectionView!
    @IBOutlet weak var pageControl: UIPageControl!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.collectionView.delegate = self
        self.collectionView.dataSource = self
        self.clipsToBounds = true
        self.layer.masksToBounds = true
        self.pageControl.numberOfPages = 6
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "multiple", for: indexPath) as! TestCollectionViewCell
        cell.simpleView.layer.shadowColor = UIColor.black.cgColor
        cell.simpleView.layer.shadowOffset = CGSize(width: 0, height:2)
        cell.simpleView.layer.shadowOpacity = 0.3
        cell.simpleView.layer.shadowRadius = 2.0
        cell.simpleView.clipsToBounds = false
        cell.simpleView.layer.masksToBounds = false

        return cell
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.size.width, height: collectionView.frame.size.height)
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

    }

    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let pageWidth = self.collectionView.frame.size.width
        pageControl.currentPage = Int(self.collectionView.contentOffset.x / pageWidth)
    }
    
}
