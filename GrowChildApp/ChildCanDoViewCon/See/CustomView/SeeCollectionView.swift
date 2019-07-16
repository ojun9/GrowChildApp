//
//  SeeCollectionView.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/16.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import VegaScrollFlowLayout

class SeeCollectionView: UICollectionView {
   
   let Layout = VegaScrollFlowLayout()
   private let itemHeight: CGFloat = 84
   private let lineSpacing: CGFloat = 20
   private let xInset: CGFloat = 20
   private let topInset: CGFloat = 10
   
   init(frame: CGRect) {
      Layout.minimumLineSpacing = 20
      Layout.itemSize = CGSize(width: frame.width, height: 87)
      Layout.sectionInset = UIEdgeInsets(top: 10, left: 0, bottom: 10, right: 0)
      super.init(frame: frame, collectionViewLayout: Layout)
      
      configureCollectionViewLayout()
   }
   
   private func configureCollectionViewLayout() {
      guard let Layout = self.collectionViewLayout as? VegaScrollFlowLayout else { return }
      
      Layout.minimumLineSpacing = lineSpacing
      Layout.sectionInset = UIEdgeInsets(top: topInset, left: 0, bottom: 0, right: 0)
      let itemWidth = UIScreen.main.bounds.width - 2 * xInset
      Layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
      self.collectionViewLayout.invalidateLayout()
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
