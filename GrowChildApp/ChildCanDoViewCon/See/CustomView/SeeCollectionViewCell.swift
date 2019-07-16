//
//  SeeCollectionViewCell.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/16.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

class SeeCollectionViewCell: UICollectionViewCell {
   
   
   private let fruitsNameLabel: UILabel = {
      let label = UILabel()
      label.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width / 2.0, height: UIScreen.main.bounds.size.width / 2.0)
      label.textColor = UIColor.gray
      label.textAlignment = .center
      return label
   }()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      setup()
   }
   
   private func setup() {
      layer.borderColor = UIColor.black.cgColor
      layer.cornerRadius = 14
      layer.shadowColor = UIColor.black.cgColor
      layer.shadowOpacity = 0.3
      layer.shadowOffset = CGSize(width: 0, height: 5)
      layer.masksToBounds = false
      backgroundColor = UIColor.flatWhiteColorDark()
      contentView.addSubview(fruitsNameLabel)
      
   
   }
   
   func setupContents(textName: String) {
      fruitsNameLabel.text = textName
      fruitsNameLabel.textColor = UIColor.gray
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented.")
   }
}
