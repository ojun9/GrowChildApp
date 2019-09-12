//
//  BreastFeedingAddButton.swift
//  GrowChildApp
//
//  Created by jun on 2019/08/23.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework

class BreastFeedingAddButton: UIButton {
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      
      self.backgroundColor = UIColor.flatTeal()
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented")
   }
}
