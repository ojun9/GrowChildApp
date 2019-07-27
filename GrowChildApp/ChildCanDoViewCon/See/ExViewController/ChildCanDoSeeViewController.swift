//
//  ChildCanDoSeeViewController.swift
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

class ChildCanDoSeeViewController: UIViewController {
   
   var SeeCollection: SeeCollectionView?
   let fruits: [String] = ["apple", "grape", "lemon", "banana", "cherry", "strobery", "peach", "orange", "lock", "dor", "dex", "foxy", "dexex", "low"]
   let CanDoDataBase = CanDoRegiDataBase()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      InitCollectionView()
   }
   
   
   private func InitCollectionView() {
      let StatusBarHeight = UIApplication.shared.statusBarFrame.size.height
      let NavigationBarHeight = self.navigationController?.navigationBar.frame.size.height
      let TabBarHeight = self.tabBarController?.tabBar.frame.size.height
      let StartY = StatusBarHeight + NavigationBarHeight!
      let CollectionViewHeight = self.view.frame.height - (StartY + TabBarHeight!)
      let Flame = CGRect(x: 0, y: StartY, width: self.view.frame.width, height: CollectionViewHeight)
      SeeCollection = SeeCollectionView(frame: Flame)
      SeeCollection?.delegate = self
      SeeCollection?.dataSource = self
      
      
      SeeCollection?.register(SeeCollectionViewCell.self, forCellWithReuseIdentifier: "SeeCollectionViewCell")
      
      view.addSubview(SeeCollection!)
   }
   
   
   
   private func InitViewSetting() {
      self.view.backgroundColor = UIColor.flatWhite()
   }
   
   private func SetUpNavigationItemSetting() {
      
      self.navigationItem.title = "でき"
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
   }
   
}
