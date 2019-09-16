//
//  ShowTapeedCellViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/31.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework
import SnapKit

class ShowTapeedCellViewController: UIViewController {
   
   var ViewH: CGFloat = 0
   var ViewW: CGFloat = 0
   
   var TitleLabel = UILabel()
   var ChildImageView = UIImageView()
   var MemoView = UITextView()
   var UserSellectImageView = UIImageView()
   var AfterMemoView = UITextView()
   var DeleteButton = UIButton()
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      InitViewSizeInfo()
   
      InitTitleLabel()
      InitChildImage()
      InitMemoView()
      InitUserSellectImage()
      InitAfterMemoView()
      InitDeleteButton()
      
   }
   
   func InitViewSizeInfo() {
      self.ViewH = self.view.frame.height
      self.ViewW = self.view.frame.width
   }
   
   func InitTitleLabel() {
      TitleLabel = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
   }
   
   func InitChildImage() {
        
   }
     
   func InitMemoView() {
        
    }
     
   func InitUserSellectImage() {
        
   }
     
   func InitAfterMemoView() {
        
   }
     
   func InitDeleteButton() {
        
   }
     
}
