//
//  ChildCandoRegisterViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import SnapKit
import ChameleonFramework
import TapticEngine

class ChildCandoRegisterViewController: UIViewController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      InitNotification()
   }
   
   private func InitNotification() {
      
   }
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   private func SetUpNavigationItemSetting() {
      let ImageAndNameView = NavigationBarCustomViewImageAndText(
            frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.size.height)!),
            ViewText: "できたこと")
      self.navigationItem.titleView = ImageAndNameView
  
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
   }

   
}
