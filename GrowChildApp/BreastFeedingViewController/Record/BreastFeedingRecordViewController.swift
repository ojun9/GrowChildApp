//
//  BreastFeedingRecordViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/20.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import NumberMorphView


class BreastFeedingRecordViewController: UIViewController {
   
   var BFTimersViewLeft: BreastFeedingTimersView?
   var BFTimersViewRight: BreastFeedingTimersView?
   
   private var BreastTimer = Timer()
   private var TimeCount = 0
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      InitViewSetting()
      SetUpNavigationItemSetting()

      InitTimersViewLeft()
      InitTimersViewRight()
   }
   
   private func InitViewSetting() {
      tabBarController?.tabBar.isHidden = true
      self.view.backgroundColor = UIColor.flatWhite()
   }

   private func SetUpNavigationItemSetting() {
      let ImageAndNameView = NavigationBarCustomViewImageAndText(
         frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.size.height)!),
         ViewText: "記録")
      self.navigationItem.titleView = ImageAndNameView
      
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
   }
   
   private func InitTimersViewLeft() {
      let Frame = CGRect(x: view.frame.width / 21, y: view.frame.height / 20 * 8, width: view.frame.width / 21 * 9, height: view.frame.height / 20 * 8)
      
      BFTimersViewLeft = BreastFeedingTimersView(frame: Frame, LabelName: "Left")
      view.addSubview(BFTimersViewLeft!)
   }
   
   private func InitTimersViewRight() {
      let Frame = CGRect(x: view.frame.width / 21 * 11, y: view.frame.height / 20 * 8, width: view.frame.width / 21 * 9, height: view.frame.height / 20 * 8)
      
      BFTimersViewRight = BreastFeedingTimersView(frame: Frame, LabelName: "Right")
      view.addSubview(BFTimersViewRight!)
   }
   
}
