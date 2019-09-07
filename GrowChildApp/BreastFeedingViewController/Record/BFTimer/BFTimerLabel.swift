//
//  BFTimerLabel.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/22.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework
import SwiftFontName

class BFTimerLabel: UILabel {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      self.backgroundColor = UIColor.flatPink()
      self.text = "test"
      self.font = UIFont(name: FontName.PingFangTCLight, size: 32)
      self.adjustsFontSizeToFitWidth = true
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
