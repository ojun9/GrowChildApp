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
   
   let TimerLabelName: String!
   
   var TimerLabel: BFTimerLabel?
   var TimerView: BFTimerView?
   var StartStopButton: BFStartStopButton?
   
   init(frame: CGRect, LabelName: String) {
      TimerLabelName = LabelName
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
      StartStopButton = BFStartStopButton(frame: Flame, ButtonName: TimerLabelName!)
      addSubview(StartStopButton!)
   }
   
   private func ChangeTimerOrderChatchNotificationInfo(Name: String) {
      if Name == self.TimerLabelName! {
         print("\(Name) のタイマーを変更します\n")
         TimerView?.ChangeTimer()
      }
   }
   
   @objc func TapStartStopButtonCatchNotification(notification: Notification) -> Void {
      print("タイマーのボタン \(String(describing: TimerLabelName)) タップされた通知を取得")
      if let userInfo = notification.userInfo {
         let TimerName = userInfo["LabelName"] as! String
         print("受け取ったタイマー: \(TimerName)")
         ChangeTimerOrderChatchNotificationInfo(Name: TimerName)
      }else{
         print("nil入ってた")
      }
      
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
   
}
