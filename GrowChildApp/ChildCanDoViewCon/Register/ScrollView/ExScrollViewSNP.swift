//
//  ExScrollViewSNP.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/19.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import SnapKit
import UIKit

extension RegisterScrollView {
   
   func SetUpCanDoTextLabel() {
      CanDoTextLabel.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(30)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20)
         make.width.equalTo(self.frame.width / 20 * 14)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   func SetUpCanDoTextField() {
      CanDoTextField.snp.makeConstraints { make in
         make.top.equalTo(CanDoTextLabel.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   func SetUpMemoOfCanDOTextLabel() {
      MemoOfCanDOTextLabel.snp.makeConstraints { make in
         make.top.equalTo(CanDoTextField.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20)
         make.width.equalTo(self.frame.width / 20 * 14)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   func SetUpMemoOfTextView() {
      MemoOfTextView.snp.makeConstraints { make in
         make.top.equalTo(MemoOfCanDOTextLabel.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 5)
      }
   }
   
   func SetUpSellectImageView() {
      SellectImageView?.snp.makeConstraints { make in
         make.top.equalTo(MemoOfTextView.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 4)
         make.width.equalTo(self.frame.width / 20 * 12)
         make.height.equalTo(self.frame.width / 20 * 12)
      }
   }
   
   func SetUpCanDoRegisterButton() {
      CanDoRegisterButton.snp.makeConstraints { make in
         make.top.equalTo(SellectImageView!.snp.bottom).offset(self.frame.width / 20 * 3)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2.5)
      }
   }
   
   func SetUpCanDoCancelButton() {
      CanDoCancelButton.snp.makeConstraints { make in
         make.top.equalTo(CanDoRegisterButton.snp.bottom).offset(self.frame.width / 20 * 2.5 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2.5)
      }
   }
}
