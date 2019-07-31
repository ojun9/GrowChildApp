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
   
   //cellをそれぞれ返す
   func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SeeCollectionViewCell", for: indexPath) as! SeeCollectionViewCell
      
      cell.SetUpCellDayLabel(Day: CanDoDataBase.GetDayFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellTitleLabel(Title: CanDoDataBase.GetTitleFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellMainDiscriptionLabel(Memo: CanDoDataBase.GetMemoFromDataNumber(DataNum: indexPath.item))
      cell.SetUpCellChildImageView(ImageData: CanDoDataBase.GetImageDataFromDataNumber(DataNum: indexPath.item))
      
      return cell
   }
   

   // Cell が選択された場合
   func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
      print("Cell tap")
      print(indexPath.row)
      //performSegue(withIdentifier: "toSubViewController",sender: nil)
      
   }
   
   // Segue 準備
   override func prepare(for segue: UIStoryboardSegue, sender: Any!) {
      if (segue.identifier == "toSubViewController") {

      }
   }
 
   
}