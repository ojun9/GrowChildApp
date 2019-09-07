//
//  BreastFeedingMemoView.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/23.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class BreastFeedingMemoView: UITextView, UITextViewDelegate {
   
   override init(frame: CGRect, textContainer: NSTextContainer?) {
      super.init(frame: frame, textContainer: textContainer)
      
      self.backgroundColor = UIColor.flatPowderBlue()
   }
   
   
   // キーボードを閉じる
   func textFieldShouldReturn(_ textField: UITextField) -> Bool {
      textField.resignFirstResponder()
      return true
   }
   
   override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
      if self.isFirstResponder {
         self.resignFirstResponder()
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
