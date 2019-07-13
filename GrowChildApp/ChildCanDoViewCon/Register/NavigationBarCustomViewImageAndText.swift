//
//  NavigationBarCustomViewImageAndText.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import SwiftFontName
import ChameleonFramework

class NavigationBarCustomViewImageAndText: UIView {
   
   var ViewTexts: String?
   var ViewTextLabel = UILabel()
   var ChildImageView = UIImageView()
   var ChildImage: UIImage?
   
   init(frame: CGRect, ViewText: String) {
      super.init(frame: frame)
      
      //self.backgroundColor = .black
      
      SetUpaccessibilityIdentifierForAllObject()
      
      InitViewTexts(Text: ViewText)
      InitStringOFChildNameLabel()
      SetUpChildNameLabel()
      
      InitChildImage()
      InitImageOFChildImageView()
      SetUpChildImageView()
      
      SetUpImageViewMakeConstraints()
      SetUpChildNameLabelMakeConstraints()
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      self.accessibilityIdentifier = "NavigationBarCustomViewImageAndText"
      ViewTextLabel.accessibilityIdentifier = "ViewTextLabel"
      ChildImageView.accessibilityIdentifier = "ChildImageView"
   }
   
   //名前の取得を反映
   private func InitViewTexts(Text: String) {
      ViewTexts = Text
   }
   
   //名前のを取り出してLabelに反映させる
   private func InitStringOFChildNameLabel() {
      if let name = ViewTexts {
         self.ViewTextLabel.text = name
      }else{
         print("ViewTextsが取得できません")
         self.ViewTextLabel.text = "None"
      }
   }
   
   //Labelの各種設定をする
   private func SetUpChildNameLabel() {
      ViewTextLabel.minimumScaleFactor = 0.3
      ViewTextLabel.adjustsFontSizeToFitWidth = true
      ViewTextLabel.numberOfLines = 1
      ViewTextLabel.textAlignment = .center
      ViewTextLabel.baselineAdjustment = .alignCenters
      ViewTextLabel.font = UIFont(name: FontName.HiraMaruProNW4, size: 22)
      ViewTextLabel.textColor = UIColor.flatWhite()
      self.addSubview(ViewTextLabel)
   }
   
   //Imageの取得をどっかからする
   private func InitChildImage() {
      ChildImage = UIImage(named: "test.png")?.ResizeUIImage(width: 126, height: 126)
   }
   
   //Imageの反映をImageVeiwにする
   private func InitImageOFChildImageView() {
      if let image = ChildImage {
         ChildImageView.image = image
      }else{
         print("画像は登録されてません")
         ChildImageView.image = UIImage(named: "flare")?.ResizeUIImage(width: 126, height: 126)
      }
   }
   
   //ImageViewの各種設定をする
   private func SetUpChildImageView() {
      ChildImageView.layer.borderColor = UIColor.flatWhite()?.cgColor
      ChildImageView.layer.borderWidth = 1.25
      ChildImageView.clipsToBounds = true
      ChildImageView.layer.cornerRadius = self.frame.height / 2
      self.addSubview(ChildImageView)
   }
   
   private func SetUpImageViewMakeConstraints() {
      ChildImageView.snp.makeConstraints { make in
         make.height.equalTo(self.snp.height)
         make.leading.equalTo(self.snp.leading)
         make.width.equalTo(self.snp.height)
      }
      
   }
   
   private func SetUpChildNameLabelMakeConstraints() {
      ViewTextLabel.snp.makeConstraints { make in
         make.height.equalTo(self.snp.height)
         make.leading.equalTo(ChildImageView.snp.trailing).offset(10)
         make.trailing.equalTo(self.snp.trailing).offset(-self.frame.height / 4)
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
