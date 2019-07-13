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
import SnapKit

class RegisterScrollView: UIScrollView, UITextFieldDelegate {
   
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
      
      let vi = UIView(frame: CGRect(x: 10, y: 100, width: 100, height: 100))
      self.addSubview(vi)
      
      
      self.backgroundColor = UIColor.flatPink()
      print("\(self.frame)\n\n\n")
      self.contentSize = CGSize(width:self.frame.width, height:1000)
   
      InitCanDoText()
      InitCanDoTextLabel()

      InitCanDoTextField()

      InitMemoOfCanDOText()
      InitMemoOfCanDOTextLabel()
      
      InitMemoOfTextView()
      
      InitSellectImageView()
      
      InitCanDoRegisterButton()
      InitCanDoCancelButton()
      
      SetUpCanDoTextLabel()
      SetUpCanDoTextField()
      SetUpMemoOfCanDOTextLabel()
      SetUpMemoOfTextView()
      SetUpSellectImageView()
      SetUpCanDoRegisterButton()
      SetUpCanDoCancelButton()
      
//      self.snp.makeConstraints { make in
//         make.bottom.equalTo(CanDoCancelButton.snp.bottom).offset(20)
//         make.top.equalTo(CanDoTextLabel.snp.top).offset(30)
//      }
   }
   
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      // キーボードを閉じる
      textField.resignFirstResponder()
      return true
   }
   
   
   private func InitCanDoText() {
      CanDoText = "できたこと・"
   }
   
   private func InitCanDoTextLabel() {
      CanDoTextLabel.text = CanDoText
      CanDoTextLabel.backgroundColor = UIColor.blue
      self.addSubview(CanDoTextLabel)
   }
   
   private func InitCanDoTextField() {
      CanDoTextField.backgroundColor = UIColor.blue
      CanDoTextField.delegate = self
      self.addSubview(CanDoTextField)
   }
   
   private func InitMemoOfCanDOText() {
      MemoOfCanDOText = "わたしのきもち"
   }
   
   private func InitMemoOfCanDOTextLabel() {
      MemoOfCanDOTextLabel.text = MemoOfCanDOText
      self.addSubview(MemoOfCanDOTextLabel)
   }
   
   private func InitMemoOfTextView() {
      MemoOfTextView.backgroundColor = UIColor.blue
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
   
   
   private func SetUpCanDoTextLabel() {
      CanDoTextLabel.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(30)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20)
         make.width.equalTo(self.frame.width / 20 * 14)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   private func SetUpCanDoTextField() {
      CanDoTextField.snp.makeConstraints { make in
         make.top.equalTo(CanDoTextLabel.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   private func SetUpMemoOfCanDOTextLabel() {
      MemoOfCanDOTextLabel.snp.makeConstraints { make in
         make.top.equalTo(CanDoTextField.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20)
         make.width.equalTo(self.frame.width / 20 * 14)
         make.height.equalTo(self.frame.width / 20 * 2)
      }
   }
   
   private func SetUpMemoOfTextView() {
      MemoOfTextView.snp.makeConstraints { make in
         make.top.equalTo(MemoOfCanDOTextLabel.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 5)
      }
   }
   
   private func SetUpSellectImageView() {
      SellectImageView?.snp.makeConstraints { make in
         make.top.equalTo(MemoOfTextView.snp.bottom).offset(self.frame.width / 20 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 4)
         make.width.equalTo(self.frame.width / 20 * 12)
         make.height.equalTo(self.frame.width / 20 * 12)
      }
   }
   
   private func SetUpCanDoRegisterButton() {
      CanDoRegisterButton.snp.makeConstraints { make in
         make.top.equalTo(SellectImageView!.snp.bottom).offset(self.frame.width / 20 * 3)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2.5)
      }
   }
   
   private func SetUpCanDoCancelButton() {
      CanDoCancelButton.snp.makeConstraints { make in
         make.top.equalTo(CanDoRegisterButton.snp.bottom).offset(self.frame.width / 20 * 3)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2.5)
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
