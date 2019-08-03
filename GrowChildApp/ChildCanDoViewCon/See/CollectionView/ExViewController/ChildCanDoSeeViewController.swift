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
   let CanDoDataBase = CanDoRegiDataBase()
   
   var MaxDataBaseNum = 0
   var AllUsersImagesInRealm: [UIImage] = Array()
   
   override func viewDidLoad() {
      super.viewDidLoad()
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      InitMaxDataBaseNum()
      InitAllUserItemArry()
      
      InitCollectionView()
   }
   
   private func InitMaxDataBaseNum() {
      MaxDataBaseNum = CanDoDataBase.GetDataCountOfDataBaseDataCount()
   }
   
   private func InitAllUserItemArry() {
      for tmp in 0 ... MaxDataBaseNum - 1 {
         let ImageData = CanDoDataBase.GetImageDataFromDataNumber(DataNum: tmp)
         if let Data = ImageData {
            let Image = UIImage(data: Data as Data)!
            AllUsersImagesInRealm.append(Image)
         }else{
            fatalError("For文でImageDataゲットしたらnil入ってた。")
         }
      }
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
