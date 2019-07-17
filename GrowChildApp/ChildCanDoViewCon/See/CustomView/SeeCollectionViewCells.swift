//
//  SeeCollectionViewCells.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/17.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit

class SeeCollectionViewCells: UICollectionViewCell {
   
   
   @IBOutlet weak var DayLabel: UILabel!
   
   @IBOutlet weak var CellTitleLabel: UILabel!
   
   @IBOutlet weak var CellMainDiscriptionLabel: UILabel!
   
   @IBOutlet weak var CellChildImageView: UIImageView!
   
   override func awakeFromNib() {
      super.awakeFromNib()
      setup()
   }
   
   private func setup() {
      layer.borderColor = UIColor.black.cgColor
      layer.cornerRadius = 5
      layer.shadowColor = UIColor.black.cgColor
      layer.shadowOpacity = 0.2
      layer.shadowOffset = CGSize(width: 3, height: 3)
      layer.masksToBounds = false
      self.backgroundColor = UIColor.white
      
      
   }
   
   func setupContents(textName: String) {
      DayLabel.text = "2/12"
      CellTitleLabel.text = "Jump"
      CellMainDiscriptionLabel.text = "lalalalal"
      CellChildImageView.image = UIImage(named: "NoSellectedImage.png")
      DayLabel.textColor = UIColor.gray
      
   }

}
