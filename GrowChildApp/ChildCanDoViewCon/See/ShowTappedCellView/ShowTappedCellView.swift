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
   var ChildImage = UIImage()
   var ChildImageView = UIImageView()
   var MemoView = UITextView()
   var UserSellectImage = UIImage()
   var UserSellectImageView = UIImageView()
   var AfterMemoView = UITextView()
   var DeleteButton = UIButton()
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      self.view.backgroundColor = UIColor.flatWhite()
      
      InitViewSizeInfo()
      SetUpBarHeight()
   
      InitTitleLabel()
      InitChildImageView()
      InitMemoView()
      InitUserSellectImageView()
      InitDeleteButton()
      
      SNPTitleLabel()
      SNPChildImageView()
      SNPMemoView()
      SNPUserSellectImageView()
      SNPDeleteButton()
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
      TitleLabel.backgroundColor = UIColor.flatBlue()
      self.view.addSubview(TitleLabel)
   }
   
   func SNPTitleLabel() {
      TitleLabel.snp.makeConstraints { make in
         make.top.equalTo(self.view.snp.top).offset(NaviAndStatusBarHeight + 15)
         make.leading.equalTo(self.view.snp.leading).offset(ViewW / 20)
         make.width.equalTo(ViewW / 20 * 13)
         make.height.equalTo(ViewH / 20 * 2)
      }
   }
   
   func InitChildImageView() {
      ChildImageView.image = ChildImage
      //NOTE: このバックグラウンドは決しておけ
      ChildImageView.backgroundColor = UIColor.flatBlue()
      self.view.addSubview(ChildImageView)
   }
   
   func SNPChildImageView() {
      ChildImageView.snp.makeConstraints { make in
         make.top.equalTo(self.view.snp.top).offset(NaviAndStatusBarHeight + 15)
         make.leading.equalTo(TitleLabel.snp.trailing).offset(ViewW / 20)
         make.width.equalTo(ViewW / 20 * 4)
         make.height.equalTo(ViewH / 20 * 2)
      }
   }
     
   func InitMemoView() {
      MemoView.backgroundColor = UIColor.flatGray()
      self.view.addSubview(MemoView)
    }
   
   func SNPMemoView() {
      MemoView.snp.makeConstraints { make in
         make.top.equalTo(TitleLabel.snp.bottom).offset(15)
         make.leading.equalTo(self.view.snp.leading).offset(ViewW / 18)
         make.width.equalTo(ViewW / 18 * 16)
         make.height.equalTo(ViewH / 20 * 5)
      }
   }
     
   func InitUserSellectImageView() {
      UserSellectImageView.backgroundColor = UIColor.flatCoffee()
      self.view.addSubview(UserSellectImageView)
   }
   
   func SNPUserSellectImageView() {
      let WideSize = ViewH / 20 * 5
      let leadingAnchor = (ViewW - WideSize) / 2
      UserSellectImageView.snp.makeConstraints { make in
         make.top.equalTo(MemoView.snp.bottom).offset(15)
         make.leading.equalTo(self.view.snp.leading).offset(leadingAnchor)
         make.width.equalTo(ViewH / 20 * 5)
         make.height.equalTo(ViewH / 20 * 5)
      }
   }
     
     
   func InitDeleteButton() {
      DeleteButton.backgroundColor = UIColor.flatMagenta()
      self.view.addSubview(DeleteButton)
   }
   
   func SNPDeleteButton() {
      DeleteButton.snp.makeConstraints { make in
         make.top.equalTo(UserSellectImageView.snp.bottom).offset(15)
         make.leading.equalTo(self.view.snp.leading).offset(ViewW / 20)
         make.width.equalTo(ViewW / 20 * 18)
         make.height.equalTo(ViewH / 20)
      }
   }
   
   public func GetChildImage(SetImage: UIImage) {
      self.ChildImage = SetImage
      print("画像のセット完了")
   }
   
   public func GetUserSellectImage(SetImage: UIImage) {
      self.UserSellectImage = SetImage
      print("UserSellectImageのセット完了")
   }
     
}
