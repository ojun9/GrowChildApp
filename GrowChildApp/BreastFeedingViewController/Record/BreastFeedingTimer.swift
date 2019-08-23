//
//  BreastFeedingTimer.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/22.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import NumberMorphView

class BreastFeedingTimersView: UIView {
   
   var TimerLabel: BFTimerLabel?
   var TimerView: BFTimerView?
   var StartStopButton: BFStartStopButton?
   
   init(frame: CGRect, LabelName: String) {
      super.init(frame: frame)
      
      InitNotificationCenter()
      InitTimerLabel()
      InitTimerViewl()
      InitStartStopButton()
   }
   
   private func InitNotificationCenter() {
      NotificationCenter.default.addObserver(self, selector: #selector(TapStartStopButtonCatchNotification(notification:)), name: .TapStartStopButton, object: nil)
   }
   
   private func InitTimerLabel() {
      let Flame = CGRect(x: 0, y: frame.height / 16, width: frame.width, height: frame.height / 4)
      TimerLabel = BFTimerLabel(frame: Flame)
      addSubview(TimerLabel!)
   }
   
   private func InitTimerViewl() {
      let Flame = CGRect(x: 0, y: frame.height / 16 * 6, width: frame.width, height: frame.height / 4)
      TimerView = BFTimerView(frame: Flame)
      addSubview(TimerView!)
   }
   
   private func InitStartStopButton() {
      let Flame = CGRect(x: 0, y: frame.height / 16 * 11, width: frame.width, height: frame.height / 4)
      StartStopButton = BFStartStopButton(frame: Flame)
      addSubview(StartStopButton!)
   }
   
   @objc func TapStartStopButtonCatchNotification(notification: Notification) -> Void {
      
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
}
