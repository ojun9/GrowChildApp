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
   
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
   }
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   
   
   private func SetUpNavigationItemSetting() {
      let StudyAddButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.AddStudy(sender:)))
      
      self.navigationItem.title = "授乳タイマー"
      self.navigationItem.setLeftBarButton(StudyAddButton, animated: true)
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
      self.tabBarItem.title = "授乳タイマー"
   }
   
   
   @objc func AddStudy(sender: UIBarButtonItem) {
      print("勉強追加ボタン押されたよ")
      
      
   }
   
}


