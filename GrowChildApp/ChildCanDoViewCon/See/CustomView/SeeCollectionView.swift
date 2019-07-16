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
import ChameleonFramework

class SeeCollectionView: UICollectionView {
   
   let Layout = VegaScrollFlowLayout()
   private let itemHeight: CGFloat = 84
   private let lineSpacing: CGFloat = 20
   private let xInset: CGFloat = 20
   private let topInset: CGFloat = 30
   
   init(frame: CGRect) {
      super.init(frame: frame, collectionViewLayout: Layout)
      
      
      configureCollectionViewLayout()
      self.backgroundColor = UIColor.flatWhite()
   }
   
   private func configureCollectionViewLayout() {
      guard let Layout = self.collectionViewLayout as? VegaScrollFlowLayout else { return }
      
      Layout.minimumLineSpacing = lineSpacing
      Layout.sectionInset = UIEdgeInsets(top: topInset, left: 0, bottom: 50, right: 0)
      //let itemWidth = UIScreen.main.bounds.width - 2 * xInset
      let itemWidth = ( UIScreen.main.bounds.width - 2 * xInset).rounded(.toNearestOrAwayFromZero)
      Layout.itemSize = CGSize(width: itemWidth, height: itemHeight)
      Layout.springHardness = 0
      Layout.isPagingEnabled = false
      
      self.collectionViewLayout.invalidateLayout()
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
