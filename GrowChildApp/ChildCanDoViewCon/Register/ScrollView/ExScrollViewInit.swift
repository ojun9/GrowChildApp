//
//  ExScrollViewInit.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/19.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit
import ChameleonFramework

extension RegisterScrollView {
   
   func InitCanDoText() {
      CanDoText = "できたこと・"
   }
   
   func InitCanDoTextLabel() {
      CanDoTextLabel.text = CanDoText
      CanDoTextLabel.backgroundColor = UIColor.blue
      self.addSubview(CanDoTextLabel)
   }
   
   func InitCanDoTextField() {
      CanDoTextField.backgroundColor = UIColor.blue
      CanDoTextField.returnKeyType = .done
      CanDoTextField.delegate = self
      self.addSubview(CanDoTextField)
   }
   
   func InitMemoOfCanDOText() {
      MemoOfCanDOText = "わたしのきもち"
   }
   
   func InitMemoOfCanDOTextLabel() {
      MemoOfCanDOTextLabel.text = MemoOfCanDOText
      self.addSubview(MemoOfCanDOTextLabel)
   }
   
   func InitMemoOfTextView() {
      MemoOfTextView.backgroundColor = UIColor.blue
      self.addSubview(MemoOfTextView)
   }
   
   func InitSellectImageView() {
      SellectImageView = SellectImageViewForSpuare(frame: frame)
      self.addSubview(SellectImageView!)
   }
   
   func InitCanDoRegisterButton() {
      CanDoRegisterButton.backgroundColor = UIColor.flatMint()
      CanDoRegisterButton.addTarget(self, action: #selector(self.TapCanDoRegiButton(_:)), for: .touchUpInside)
      self.addSubview(CanDoRegisterButton)
   }
   
   func InitCanDoCancelButton() {
      CanDoCancelButton.backgroundColor = UIColor.flatMint()
      CanDoCancelButton.addTarget(self, action: #selector(self.TapCanDoCancelButton(_:)), for: .touchUpInside)
      self.addSubview(CanDoCancelButton)
   }
   
   
   func InitObjectIdentify() {
      CanDoTextLabel.accessibilityIdentifier = "CanDoTextLabel"
      CanDoTextField.accessibilityIdentifier = "CanDoTextField"
      MemoOfCanDOTextLabel.accessibilityIdentifier = "MemoOfCanDOTextLabel"
      MemoOfTextView.accessibilityIdentifier = "MemoOfTextView"
      SellectImageView?.accessibilityIdentifier = "SellectImageView"
      CanDoRegisterButton.accessibilityIdentifier = "CanDoRegisterButton"
      CanDoCancelButton.accessibilityIdentifier = "CanDoCancelButton"
   }
}
