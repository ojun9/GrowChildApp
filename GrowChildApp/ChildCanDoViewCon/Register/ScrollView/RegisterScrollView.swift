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

   }
   
   // キーボードを閉じる
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      textField.resignFirstResponder()
      return true
   }
   
   override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      if self.MemoOfTextView.isFirstResponder {
         self.MemoOfTextView.resignFirstResponder()
      }
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
      CanDoTextField.returnKeyType = .done
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
      CanDoRegisterButton.addTarget(self, action: #selector(self.TapCanDoRegiButton(_:)), for: .touchUpInside)
      self.addSubview(CanDoRegisterButton)
   }
   
   private func InitCanDoCancelButton() {
      CanDoCancelButton.backgroundColor = UIColor.flatMint()
      CanDoCancelButton.addTarget(self, action: #selector(self.TapCanDoCancelButton(_:)), for: .touchUpInside)
      self.addSubview(CanDoCancelButton)
   }
   
   
   @objc func TapCanDoRegiButton(_ sender: UIButton) {
      
   }
   
   @objc func TapCanDoCancelButton(_ sender: UIButton) {
      
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
         make.top.equalTo(CanDoRegisterButton.snp.bottom).offset(self.frame.width / 20 * 2.5 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.width / 20 * 2)
         make.width.equalTo(self.frame.width / 20 * 16)
         make.height.equalTo(self.frame.width / 20 * 2.5)
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
