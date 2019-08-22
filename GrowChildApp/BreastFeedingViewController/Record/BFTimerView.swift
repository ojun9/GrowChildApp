//
//  BFTimerView.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/22.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import NumberMorphView
import UIKit

class BFTimerView: UIView {
  
   private var Second0 = NumberMorphView()
   private var Second1 = NumberMorphView()
   
   private var ColonLabel: UILabel!
   
   private var Minutes0 = NumberMorphView()
   private var Minutes1 = NumberMorphView()
   
   private var BreastTimer = Timer()
   private var TimeCount = 0
   
   
   override init(frame: CGRect) {
      super.init(frame: frame)
   }
   
   private func InitNumberMorphView(sender: NumberMorphView) {
      sender.fontSize = 64
      sender.currentDigit = 0
      sender.frame = CGRect(x: 10, y: 100, width: self.frame.width / 3, height: self.frame.height / 10);
      self.addSubview(sender)
      sender.interpolator = NumberMorphView.LinearInterpolator()
   }
   
   private func SetUpTimer() {
      if !BreastTimer.isValid {
         BreastTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BFTimerView.UpdateTimer), userInfo: nil, repeats: true)
      }
   }
   
   @objc private func UpdateTimer() {
      
   }
   
   
   public func StopTimer() {
      if BreastTimer.isValid {
         BreastTimer.invalidate()
      }
   }
   
   public func StartTimer() {
      if !BreastTimer.isValid {
         BreastTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(BFTimerView.UpdateTimer), userInfo: nil, repeats: true)
      }
   }
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
}
