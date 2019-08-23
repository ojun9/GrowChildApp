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
import SwiftFontName

class BFTimerView: UIView {
   
   private let TimeInterval = 0.5
  
   private var Second0 = NumberMorphView()
   private var Second1 = NumberMorphView()
   
   private var ColonLabel: UILabel!
   
   private var Minutes0 = NumberMorphView()
   private var Minutes1 = NumberMorphView()
   
   private var BreastTimer = Timer()
   private var TimeCount = 0
   
   private var ViewH: CGFloat = 0
   private var ViewW: CGFloat = 0
   
   private var NumberViewH: CGFloat = 0
   private var NumberViewW: CGFloat = 0
   
   var TimerCount = 0.0
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      EachVeiwLength()
      
      InitNumberMorphView(sender: Minutes1, StartX: NumberViewW * 1)
      InitNumberMorphView(sender: Minutes0, StartX: NumberViewW * 2)
      InitNumberMorphView(sender: Second1, StartX: NumberViewW * 5)
      InitNumberMorphView(sender: Second0, StartX: NumberViewW * 6)
   }
   
   private func EachVeiwLength() {
      ViewH = self.frame.height
      ViewW = self.frame.width
      
      NumberViewH = ViewH
      NumberViewW = ViewW / 8
   }
   
   
   
   private func InitNumberMorphView(sender: NumberMorphView, StartX: CGFloat) {
      
      sender.fontSize = 64
      sender.currentDigit = 0
      sender.frame = CGRect(x: StartX, y: 0, width: NumberViewW, height: NumberViewH);
      self.addSubview(sender)
      sender.interpolator = NumberMorphView.LinearInterpolator()
   }
   
   private func InitColonLabel() {
      let Frame = CGRect(x: NumberViewW * 3.5, y: 0, width: NumberViewW, height: NumberViewH)
      ColonLabel = UILabel(frame: Frame)
      ColonLabel.text = ":"
      ColonLabel.adjustsFontSizeToFitWidth = true
      ColonLabel.font = UIFont(name: FontName.HiraKakuProNW6, size: 64)
   }
   

   
   @objc private func UpdateTimer() {
      TimerCount += TimeInterval
      
      let TimeMinutes = Int(TimerCount) / 60
      let TimeSecond = Int(TimerCount) % 60
      
      if Minutes1.currentDigit != TimeMinutes / 10 {
         Minutes1.nextDigit = TimeMinutes / 10
      }
      
      if Minutes0.currentDigit != TimeMinutes %  10 {
         Minutes0.nextDigit = TimeMinutes %  10
      }
      
      if Second1.currentDigit != TimeSecond / 10 {
         Second1.nextDigit = TimeSecond / 10
      }

      if Second0.currentDigit != TimeSecond % 10 {
         Second0.nextDigit = TimeSecond %  10
      }
   }
   
   
   public func StopTimer() {
      BreastTimer.invalidate()
   }
   
   public func StartTimer() {
      BreastTimer = Timer.scheduledTimer(timeInterval: TimeInterval, target: self, selector: #selector(BFTimerView.UpdateTimer), userInfo: nil, repeats: true)
   }
   
   
   public func ChangeTimer() {
      if BreastTimer.isValid {
         StopTimer()
      } else {
         StartTimer()
      }
   }
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
}
