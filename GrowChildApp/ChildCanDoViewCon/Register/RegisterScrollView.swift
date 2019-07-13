//
//  RegisterScrollView.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

class RegisterScrollView: UIScrollView {
   
   var CanDoText = ""
   var CandDoTextLabel = UILabel()
   
   var CanDoTextField = UITextField()
   var CanDoTextFieldString = ""
   
   var MemoOfCanDOText = ""
   var MemoOfTextView = UITextView()
   
   
   
   override init(frame: CGRect) {
      super.init(frame: frame)
   
      
   }
   
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
