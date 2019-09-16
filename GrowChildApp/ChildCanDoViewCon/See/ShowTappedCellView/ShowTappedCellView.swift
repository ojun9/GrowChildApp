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
   
   var statusBarHeight = UIApplication.shared.statusBarFrame.size.height
   var navigationBarHeight: CGFloat?
   var NaviAndStatusBarHeight: CGFloat = 0
   
   var TitleLabel = UILabel()
   var ChildImageView = UIImageView()
   var MemoView = UITextView()
   var UserSellectImageView = UIImageView()
   var AfterMemoView = UITextView()
   var DeleteButton = UIButton()
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.view.backgroundColor = UIColor.flatWhite()
      
      InitViewSizeInfo()
      SetUpBarHeight()
   
      InitTitleLabel()
      InitChildImage()
      InitMemoView()
      InitUserSellectImage()
      InitAfterMemoView()
      InitDeleteButton()
      
      SNPTitleLabel()
   }
   
   func InitViewSizeInfo() {
      self.ViewH = self.view.frame.height
      self.ViewW = self.view.frame.width
      navigationBarHeight = self.navigationController?.navigationBar.frame.size.height
   }
   
   func SetUpBarHeight() {
      if let NaviH = navigationBarHeight {
         NaviAndStatusBarHeight = NaviH + statusBarHeight
      } else {
         NaviAndStatusBarHeight = statusBarHeight
      }
      
   }
   
   func InitTitleLabel() {
      TitleLabel.backgroundColor = UIColor.flatRed()
      self.view.addSubview(TitleLabel)
   }
   
   func SNPTitleLabel() {
      TitleLabel.snp.makeConstraints { make in
         make.top.equalTo(self.view.snp.top).offset(NaviAndStatusBarHeight + 1)
         make.leading.equalTo(self.view.snp.leading).offset(ViewW / 20)
         make.width.equalTo(ViewW / 20 * 18)
         make.height.equalTo(ViewH / 20)
      }
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
