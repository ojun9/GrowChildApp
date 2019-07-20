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
      
      InitObjectIdentify()
      
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
   
   
   
   
   @objc func TapCanDoRegiButton(_ sender: UIButton) {
      print("登録ボタンタップされました")
   }
   
   @objc func TapCanDoCancelButton(_ sender: UIButton) {
      print("キャンセルボタンタップされました")
   }
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
