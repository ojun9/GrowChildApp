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
   
   var RegiScrollView: RegisterScrollView?
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      InitNotification()
      InitRegiScrollView()
   }
   
   private func InitNotification() {
      NotificationCenter.default.addObserver(self, selector: #selector(OpenActionSheetNowSellectedImageCatchNotification(notification:)), name: .SellectImageNowSellected, object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(OpenActionSheetNotSellectedImageCatchNotification(notification:)), name: .SellectImageNowNotSellected, object: nil)
      NotificationCenter.default.addObserver(self, selector: #selector(FinishRegisterOneViewBack(notification:)), name: .FinishRegiButtonTap, object: nil)
   }
   
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   private func InitRegiScrollView() {
      RegiScrollView = RegisterScrollView(frame: self.view.frame)
      RegiScrollView?.accessibilityIdentifier = "RegiScrollView"
      self.view.addSubview(RegiScrollView!)
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
   
   
   @objc func FinishRegisterOneViewBack(notification: Notification) ->Void {
      self.navigationController?.popViewController(animated: true)
   }

   
}
