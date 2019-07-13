//
//  NavigationBarCustomView.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import SnapKit

class NavigationBarCustomView: UIView {
   
   var ChildName: String?
   var ChildNameLabel = UILabel()
   var ChildImageView = UIImageView()
   var ChildImage: UIImage?
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      SetUpaccessibilityIdentifierForAllObject()
      
      InitChildName()
      InitStringOFChildNameLabel()
      
      InitChildImage()
      InitImageOFChildImageView()
      
      SetUpImageViewPoition()
      SetUpChildNameLabel()
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      ChildNameLabel.accessibilityIdentifier = "ChildNameLabel"
      ChildImageView.accessibilityIdentifier = "ChildImageView"
   }
   
   private func InitChildName() {
      ChildName = "TMP"
   }
   
   private func InitStringOFChildNameLabel() {
      if let name = ChildName {
         self.ChildNameLabel.text = name
      }else{
         print("名前が取得できません")
         self.ChildNameLabel.text = "None"
      }
      self.addSubview(ChildNameLabel)
   }
   
   private func InitChildImage() {
      ChildImage = UIImage(named: "test.png")
   }
   
   private func InitImageOFChildImageView() {
      if let image = ChildImage {
         ChildImageView.image = image
      }else{
         print("画像は登録されてません")
         ChildImageView.image = UIImage(named: "flare")
      }
      
      self.addSubview(ChildImageView)
   }
   
   private func SetUpImageViewPoition() {
      ChildImageView.snp.makeConstraints { make in
         make.height.equalTo(self.snp.height)
         make.leading.equalTo(self.snp.leading)
         make.width.equalTo(self.snp.height)
      }
   }
   
   private func SetUpChildNameLabel() {
      ChildNameLabel.snp.makeConstraints { make in
         make.height.equalTo(self.snp.height)
         make.leading.equalTo(ChildImageView.snp.trailing).offset(5)
         make.trailing.equalTo(self.snp.trailing)
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
