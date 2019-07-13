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
      
      
      let ImageAndNameView = NavigationBarCustomViewImageAndName(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: (self.navigationController?.navigationBar.frame.size.height)!))
      self.navigationItem.titleView = ImageAndNameView
      
      let AddAnotherChildBarButton: UIBarButtonItem = UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(self.AddAnotherChild(_:)))
      self.navigationItem.setLeftBarButton(AddAnotherChildBarButton, animated: true)
      
      self.navigationController?.navigationBar.barTintColor = UIColor.flatWatermelon()
      self.navigationController?.navigationBar.tintColor = .white
      self.navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
   }
   

   @objc func AddAnotherChild(_ sender: UIBarButtonItem) {
      print("Child追加ボタン押されたよ")
   }
   
   private func SetUpaccessibilityIdentifierForAllObject() {
      CanDoRegiButton.accessibilityIdentifier = "CanDoRegiButton"
      CanDoSeeButton.accessibilityIdentifier = "CanDoSeeButton"
   }
   
   //MARK:- Init
   private func InitCanDoRegiButton() {
      CanDoRegiButton.backgroundColor = .purple
      CanDoRegiButton.addTarget(self, action: #selector(TapCanDoRegiButton(_:)), for: .touchUpInside)
      self.view.addSubview(CanDoRegiButton)
      
      CanDoRegiButton.snp.makeConstraints { make in
         make.leading.equalTo(self.view.snp.leading).offset(20)
         make.trailing.equalTo(self.view.snp.trailing).offset(-20)
         make.top.equalTo(self.view.snp.top).offset(200)
         make.height.equalTo(self.view.frame.height / 5)
      }
   }
   
   private func InitCanDoSeeButton() {
      CanDoSeeButton.backgroundColor = .blue
      CanDoSeeButton.addTarget(self, action: #selector(TapCanDoSeeButton(_:)), for: .touchUpInside)
      self.view.addSubview(CanDoSeeButton)
      
      CanDoSeeButton.snp.makeConstraints { make in
         make.leading.equalTo(self.view.snp.leading).offset(20)
         make.trailing.equalTo(self.view.snp.trailing).offset(-20)
         make.top.equalTo(self.CanDoRegiButton.snp.bottom).offset(20)
         make.height.equalTo(self.view.frame.height / 5)
      }
   }
   
   //MARK:- Touch Event
   @objc func TapCanDoRegiButton(_ sender: UIButton) {
      let CanDoRegisterVC = ChildCandoRegisterViewController()
      navigationController?.pushViewController(CanDoRegisterVC, animated: true)
   }
   
   @objc func TapCanDoSeeButton(_ sender: UIButton ) {
      let CanDOSeeVC = ChildCanDoSeeViewController()
      navigationController?.pushViewController(CanDOSeeVC, animated: true)
   }

}

