//
//  RegisterScrollView.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class RegisterScrollView: UIScrollView {
   
   var CanDoText = ""
   var CanDoTextLabel = UILabel()
   
   var CanDoTextField = UITextField()
   var CanDoTextFieldString = ""
   
   var MemoOfCanDOText = ""
   var MemoOfCanDOTextLabel = UILabel()
   var MemoOfTextView = UITextView()
   
   var SellectImageView: SellectImageViewForSpuare?
   
   var CanDoRegisterButton = UIButton()
   var CanDoCancelButton = UIButton()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
   
      InitCanDoText()
      InitCanDoTextLabel()

      InitCanDoTextField()

      InitMemoOfCanDOText()
      InitMemoOfCanDOTextLabel()
      
      InitMemoOfTextView()
      
      InitSellectImageView()
      
      InitCanDoRegisterButton()
      InitCanDoCancelButton()
   }
   
   
   private func InitCanDoText() {
      CanDoText = "できたこと・"
   }
   
   private func InitCanDoTextLabel() {
      CanDoTextLabel.text = CanDoText
      self.addSubview(CanDoTextLabel)
   }
   
   private func InitCanDoTextField() {
      self.addSubview(CanDoTextLabel)
   }
   
   private func InitMemoOfCanDOText() {
      MemoOfCanDOText = "わたしのきもち"
   }
   
   private func InitMemoOfCanDOTextLabel() {
      MemoOfCanDOTextLabel.text = MemoOfCanDOText
      self.addSubview(MemoOfCanDOTextLabel)
   }
   
   private func InitMemoOfTextView() {
      self.addSubview(MemoOfTextView)
   }
   
   private func InitSellectImageView() {
      SellectImageView = SellectImageViewForSpuare(frame: frame)
      self.addSubview(SellectImageView!)
   }

   private func InitCanDoRegisterButton() {
      CanDoRegisterButton.backgroundColor = UIColor.flatMint()
      self.addSubview(CanDoRegisterButton)
   }
   
   private func InitCanDoCancelButton() {
      CanDoCancelButton.backgroundColor = UIColor.flatMint()
      self.addSubview(CanDoCancelButton)
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
