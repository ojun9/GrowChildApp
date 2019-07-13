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
   
   @objc func TapSellectImageView(_ sender: UITapGestureRecognizer) {
      if isSellectedImage == true {
         NotificationCenter.default.post(name: .SellectImageNowSellected, object: nil, userInfo: nil)
         return
      }
      NotificationCenter.default.post(name: .SellectImageNowNotSellected, object: nil, userInfo: nil)
   }
   
   public func GetisSellectedImage() -> Bool { return self.isSellectedImage }
   public func ChangeTrueisSellectedImage() { isSellectedImage = true }
   public func ChangeFalseisSellectedImage() { isSellectedImage = false }
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("Error Init")
   }
}
