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
      print("データベースのデータ数は,\(CanDoDataBase.GetDataCountOfDataBaseDataCount())")
      return CanDoDataBase.GetDataCountOfDataBaseDataCount()
   }
   
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeeCollectionViewCell", for: indexPath) as! SeeCollectionViewCell
      
      print(indexPath.item)
      print(indexPath.row)
      
      cell.SetUpCellTitleLabel(Title: CanDoDataBase.GetTitleFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellMainDiscriptionLabel(Memo: CanDoDataBase.GetMemoFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellChildImageView(ImageData: CanDoDataBase.GetImageDataFromDataNumber(DataNum: indexPath.item))
      
      
      return cell
   }
   
   
   
 
   
}
