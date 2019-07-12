//
//  MainTabBarViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/12.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import ChameleonFramework
import UIKit

class MainTabBarViewController: UITabBarController {
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      InitEachViewController()
      SetUpTabBarItemsColor()
      
   }
   
   private func InitEachViewController() {
      let CanDoViewCon = ChildCanDoMainViewController()
      let BreastFeedingViewCon = BreastFeedingMainViewController()
      let SettingViewCon = SettingMainViewController()

      CanDoViewCon.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 1)
      BreastFeedingViewCon.tabBarItem = UITabBarItem(tabBarSystemItem: .bookmarks, tag: 2)
      SettingViewCon.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 3)

      let NaviVCForCanDoViewCon = UINavigationController(rootViewController: CanDoViewCon)
      let NaviVCForBreastFeedingViewCon = UINavigationController(rootViewController: BreastFeedingViewCon)
      let NaviVCForSettingViewCon = UINavigationController(rootViewController: SettingViewCon)

      setViewControllers([NaviVCForCanDoViewCon, NaviVCForBreastFeedingViewCon, NaviVCForSettingViewCon], animated: true)
   }
   
   private func SetUpTabBarItemsColor() {
      self.tabBar.tintColor = UIColor.flatWatermelon()
   }
   
}
