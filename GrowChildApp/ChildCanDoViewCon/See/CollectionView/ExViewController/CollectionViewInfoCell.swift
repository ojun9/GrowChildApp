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
      print("データベースのデータ数は,\(MaxDataBaseNum)")
      return MaxDataBaseNum
   }
   
   //cellをそれぞれ返す
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeeCollectionViewCell", for: indexPath) as! SeeCollectionViewCell
      
      print("セルの生成します \(indexPath.item)")
      
      cell.SetUpCellDayLabel(Day: CanDoDataBase.GetDayFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellTitleLabel(Title: CanDoDataBase.GetTitleFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellMainDiscriptionLabel(Memo: CanDoDataBase.GetMemoFromDataNumber(DataNum: indexPath.item))
      
      
      cell.SetImage(Image: AllUsersImagesInRealm[indexPath.item])
      
      return cell
   }
   

   // Cell が選択された場合
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      print("Cell tap \(indexPath.row)")
      
      if let TappedCell = collectionView.cellForItem(at: indexPath) as? SeeCollectionViewCell {
         let TappdCellVC = ShowTapeedCellViewController()
         TappdCellVC.GetUserSellectImage(SetImage: TappedCell.CellChildImageView.image!)
         navigationController?.pushViewController(TappdCellVC, animated: true)
      }
   }

 
   
}
