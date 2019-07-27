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
   var DefaultImage = UIImage(named: "NoSellectedImage.png")
   
   private var isSellectedImage = false
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      SetUpDefaultImage()
      
      self.isUserInteractionEnabled = true
      self.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(self.TapSellectImageView(_ :))))
   }
   
   @objc func TapSellectImageView(_ sender: UITapGestureRecognizer) {
      if isSellectedImage == true {
         print("画像選択されてる状態のNotificationを出す")
         NotificationCenter.default.post(name: .SellectImageNowSellected, object: nil, userInfo: nil)
         return
      }
      print("画像選択されてない状態のNotificationを出す")
      NotificationCenter.default.post(name: .SellectImageNowNotSellected, object: nil, userInfo: nil)
   }
   
   public func GetisSellectedImage() -> Bool { return self.isSellectedImage }
   public func ChangeTrueisSellectedImage() { isSellectedImage = true }
   public func ChangeFalseisSellectedImage() { isSellectedImage = false }
   public func GetSellectedImage() -> UIImage { return self.image!}
   
   //現在セットされている写真を削除する
   public func DeletNowImage() {
      self.image = DefaultImage
      ChangeFalseisSellectedImage()
   }
   
   //ある写真をセットする関数
   public func SetUserSellectedImaeg(image: UIImage) {
      self.image = image
      ChangeTrueisSellectedImage()
   }
   
   private func SetUpDefaultImage() {
      self.image = DefaultImage
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("Error Init")
   }
}
