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

class BFTimerLabel: UILabel {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      self.backgroundColor = UIColor.flatPink()
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
