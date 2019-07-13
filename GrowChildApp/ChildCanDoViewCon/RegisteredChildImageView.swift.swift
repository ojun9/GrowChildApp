//
//  RegisteredChildImageView.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

class RegisteredChildImageView: UIImageView {
   
   var ChildImage: UIImage?
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      SetUpaccessibilityIdentifierForAllObject()
      
      InitChildImage()
      InitImageOFChildImageView()≈
      SetUpChildImageView()
   }
   
   //Imageの取得をどっかからする
   private func InitChildImage() {
      ChildImage = UIImage(named: "test.png")?.ResizeUIImage(width: 126, height: 126)
   }
   
   //Imageの反映をImageVeiwにする
   private func InitImageOFChildImageView() {
      if let image = ChildImage {
         self.image = image
      }else{
         print("画像は登録されてません")
         self.image = UIImage(named: "flare")?.ResizeUIImage(width: 126, height: 126)
      }
   }
   
   //ImageViewの各種設定をする
   private func SetUpChildImageView() {
      self.layer.borderColor = UIColor.flatWatermelonColorDark()?.cgColor
      self.layer.borderWidth = 1.25
      self.clipsToBounds = true
      self.layer.cornerRadius = self.frame.height / 2
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      self.accessibilityIdentifier = "ChildImageView"
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
}
