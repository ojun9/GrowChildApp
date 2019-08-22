//
//  BFStartStopButton.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/22.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class BFStartStopButton: UIButton {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      self.backgroundColor = UIColor.flatMint()
      self.addTarget(self, action: #selector(BFStartStopButton.TapStartStopButton(_:)), for: .touchUpInside)
   }
   
   @objc func TapStartStopButton(_ sender: UIButton) {
      print("タイマーボタンタップされた。")
      
      NotificationCenter.default.post(name: .TapStartStopButton, object: nil, userInfo: nil)
   }
   
   
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
   
}
