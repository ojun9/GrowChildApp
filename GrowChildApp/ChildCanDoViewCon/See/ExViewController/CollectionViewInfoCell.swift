//
//  CollectionViewInfoCell.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/16.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

extension ChildCanDoSeeViewController: UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
   
   //cellの個数設定
   func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
      return fruits.count
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeeCollectionViewCell", for: indexPath) as! SeeCollectionViewCell
      
      let cellText = fruits[indexPath.item]
      cell.setupContents(textName: cellText)
      
      
      return cell
   }
   
   
   
 
   
}
