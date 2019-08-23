//
//  BreastFeedingMainViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/12.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit
import ChameleonFramework
import SCLAlertView

class BreastFeedingMainViewController: UIViewController {
   
   var BreastFeedingRecordButton = UIButton()
   var BreastFeedingSeeButton = UIButton()
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      SetUpaccessibilityIdentifierForAllObject()
      
      InitCanDoRegiButton()
      InitCanDoSeeButton()
      
   }
   
   override func viewWillAppear(_ animated: Bool) {
      tabBarController?.tabBar.isHidden = false
   }
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   
   
   private func SetUpNavigationItemSetting() {
      let ImageAndNameView = NavigationBarCustomViewImageAndName(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.size.height)!))
      ImageAndNameView.SetUpTitleLabel(Title: "授乳タイマー")
      self.navigationItem.titleView = ImageAndNameView
      
      
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      self.view.accessibilityIdentifier = "BreastFeedingMainViewController"
      self.navigationController?.navigationBar.accessibilityIdentifier = "BreastFeedingMainViewControllerNabiTabBar"
      BreastFeedingRecordButton.accessibilityIdentifier = "BreastFeedingRecordButton"
      BreastFeedingSeeButton.accessibilityIdentifier = "BreastFeedingSeeButton"
   }
   
   //MARK:- Init
   private func InitCanDoRegiButton() {
      BreastFeedingRecordButton.backgroundColor = .purple
      BreastFeedingRecordButton.addTarget(self, action: #selector(TapBreastFeedingRecordButton(_:)), for: .touchUpInside)
      self.view.addSubview(BreastFeedingRecordButton)
      
      BreastFeedingRecordButton.snp.makeConstraints { make in
         make.leading.equalTo(self.view.snp.leading).offset(20)
         make.trailing.equalTo(self.view.snp.trailing).offset(-20)
         make.top.equalTo(self.view.snp.top).offset(200)
         make.height.equalTo(self.view.frame.height / 5)
      }
   }
   
   private func InitCanDoSeeButton() {
      BreastFeedingSeeButton.backgroundColor = .blue
      BreastFeedingSeeButton.addTarget(self, action: #selector(TapBreastFeedingSeeButton(_:)), for: .touchUpInside)
      self.view.addSubview(BreastFeedingSeeButton)
      
      BreastFeedingSeeButton.snp.makeConstraints { make in
         make.leading.equalTo(self.view.snp.leading).offset(20)
         make.trailing.equalTo(self.view.snp.trailing).offset(-20)
         make.top.equalTo(self.BreastFeedingRecordButton.snp.bottom).offset(20)
         make.height.equalTo(self.view.frame.height / 5)
      }
   }
   
   //MARK:- Touch Event
   @objc func TapBreastFeedingRecordButton(_ sender: UIButton) {
      let BreastFeedingRecordVC = BreastFeedingRecordViewController()
      navigationController?.pushViewController(BreastFeedingRecordVC, animated: true)
   }
   
   @objc func TapBreastFeedingSeeButton(_ sender: UIButton ) {
      let BreastFeedingSeeVC = BreastFeedingSeeViewConteoller()
      navigationController?.pushViewController(BreastFeedingSeeVC, animated: true)
   }
   
}


