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
   
   let numberView = NumberMorphView()
   
   private var BreastTimer = Timer()
   private var TimeCount = 0
   
   override func viewDidLoad() {
      super.viewDidLoad()
      
      InitViewSetting()
      SetUpNavigationItemSetting()
      
      InitNumberView()


  
   }
   
   private func InitNumberView() {
      numberView.fontSize = 124
      numberView.currentDigit = 0
      numberView.frame = CGRect(x: 10, y: 100, width: self.view.frame.width / 3, height: self.view.frame.height / 10);
      self.view.addSubview(numberView)
      //change animation
      numberView.interpolator = NumberMorphView.LinearInterpolator()
      
      if !BreastTimer.isValid {
         BreastTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BreastFeedingRecordViewController.updateTimer), userInfo: nil, repeats: true)
      }
      
//      dispatch_after(5, dispatch_get_main_queue()) {
//         numberView.nextDigit = 7;
//      }
   }
   
   @objc private func updateTimer() {
      TimeCount += 1
      if TimeCount == 10 { TimeCount = 0}
      numberView.nextDigit = TimeCount
   }
   
   private func InitViewSetting() {
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
}
