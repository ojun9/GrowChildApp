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
   
   
   private func RegiSterInfomation() {
      let SaveDataBase = CanDoRegiDataBase()
      var ImageData: NSData? = nil
      
      if SellectImageView?.GetisSellectedImage() == true {
         print("画像は選択されている")
         ImageData = SellectImageView?.GetSellectedImageData()
      }
      
      let formatter = DateFormatter()
      formatter.dateFormat = DateFormatter.dateFormat(fromTemplate: "ydMMM", options: 0, locale: Locale.current)
      print("day = \(String(describing: formatter.string(from: Date())))")
      print("Title = \(String(describing: CanDoTextField.text!))")
      print("Memo = \(String(describing: MemoOfTextView.text))")
      
      SaveDataBase.AddCanDo(Day: formatter.string(from: Date()),Title: CanDoTextField.text!, Memo: MemoOfTextView.text, ImageData: ImageData)
   }
   
   
   
   @objc func TapCanDoRegiButton(_ sender: UIButton) {
      print("登録ボタンタップされました")
      
      RegiSterInfomation()
   }
   
   @objc func TapCanDoCancelButton(_ sender: UIButton) {
      print("キャンセルボタンタップされました")
   }
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
