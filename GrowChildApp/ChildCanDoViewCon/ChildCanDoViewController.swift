//
//  ChildCanDoViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/12.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit
import ChameleonFramework
import SCLAlertView
import SnapKit

class ChildCanDoMainViewController: UIViewController {
   
   var CanDoRegiButton = UIButton()
   var CanDoSeeButton = UIButton()
      
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      SetUpaccessibilityIdentifierForAllObject()
      
      InitCanDoRegiButton()
      InitCanDoSeeButton()
   }
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   private func SetUpNavigationItemSetting() {
      let StudyAddButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.AddStudy(sender:)))
      
      self.navigationItem.title = "できたこと"
      self.navigationItem.setLeftBarButton(StudyAddButton, animated: true)
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
      self.tabBarItem.title = "できたこと"
   }
   

   @objc func AddStudy(sender: UIBarButtonItem) {
      print("勉強追加ボタン押されたよ")
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      CanDoRegiButton.accessibilityIdentifier = "CanDoRegiButton"
      CanDoSeeButton.accessibilityIdentifier = "CanDoSeeButton"
   }
   
   //MARK:- 初期化
   private func InitCanDoRegiButton() {
      CanDoRegiButton.backgroundColor = .purple
      //self.view.addSubview(CanDoRegiButton)
      
      CanDoRegiButton.snp.makeConstraints { make in
         make.leading.equalTo(self.view.snp.leading).offset(20)
         make.trailing.equalTo(self.view.snp.trailing).offset(-20)
         make.top.equalTo(self.view.snp.top).offset(200)
         make.height.equalTo(self.view.frame.height / 5)
      }
      self.view.addSubview(CanDoRegiButton)

   }
   
   private func InitCanDoSeeButton() {
      
   }

}

