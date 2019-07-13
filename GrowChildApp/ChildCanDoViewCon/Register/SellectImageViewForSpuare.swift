//
//  SellectImageViewForSpuare.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

class SellectImageViewForSpuare: UIImageView {
   
   var SellectedImage = UIImage()
   
   var isSellectedImage = false
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      self.isUserInteractionEnabled = true
      self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.TapSellectImageView(_ :))))
   }
   
   private func OpenActionSheetNowSellectedImage() {
      let Alert = UIAlertController(title: "(name)の写真を変更", message: nil, preferredStyle: .actionSheet)
      
      let DeletImageAction = UIAlertAction(title: "現在の写真を削除", style: .destructive, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      let TakeImageAction = UIAlertAction(title: "写真を撮る", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      let ChoseImageFromLibraryAction = UIAlertAction(title: "ライブラリから選択", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      let CancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      Alert.addAction(DeletImageAction)
      Alert.addAction(TakeImageAction)
      Alert.addAction(ChoseImageFromLibraryAction)
      Alert.addAction(CancelAction)
      
   }
   
   private func OpenActionSheetNotSellectedImage() {
      let Alert = UIAlertController(title: "(name)の写真を登録", message: nil, preferredStyle: .actionSheet)
      
      let TakeImageAction = UIAlertAction(title: "写真を撮る", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      let ChoseImageFromLibraryAction = UIAlertAction(title: "ライブラリから選択", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      let CancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action: UIAlertAction!) -> Void in
         print("")
      })
      
      Alert.addAction(TakeImageAction)
      Alert.addAction(ChoseImageFromLibraryAction)
      Alert.addAction(CancelAction)
      
      presentViewController(Alert, animated: true, completion: nil)
   }
   
   @objc func TapSellectImageView(_ sender: UITapGestureRecognizer) {
      if isSellectedImage == true {
         OpenActionSheetNowSellectedImage()
         return
      }
      OpenActionSheetNotSellectedImage()
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("Error Init")
   }
}
