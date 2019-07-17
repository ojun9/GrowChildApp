//
//  SeeCollectionViewCell.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/16.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import ChameleonFramework
import SnapKit

class SeeCollectionViewCell: UICollectionViewCell {
   
   var CellDayLabel = UILabel()
   var CellTitleLabel = UILabel()
   var CellMainDiscriptionLabel = UILabel()
   var CellChildImageView = UIImageView()
   
   
   private let fruitsNameLabel: UILabel = {
      let label = UILabel()
      label.frame = CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width / 2.0, height: 84)
      label.textColor = UIColor.gray
      label.textAlignment = .center
      return label
   }()
   
   override init(frame: CGRect) {
      super.init(frame: frame)
      setup()
      
      print(self.frame)
      
      InitCellLabel()
      OutLayoutCellLabel()
   }
   
   private func setup() {
      layer.borderColor = UIColor.black.cgColor
      layer.cornerRadius = 5
      layer.shadowColor = UIColor.black.cgColor
      layer.shadowOpacity = 0.2
      layer.shadowOffset = CGSize(width: 3, height: 3)
      layer.masksToBounds = false
      self.backgroundColor = UIColor.white
      //contentView.addSubview(fruitsNameLabel)
   }
   
   private func InitCellLabel() {
      CellDayLabel.backgroundColor = UIColor.flatLime()
      CellTitleLabel.backgroundColor = UIColor.flatLime()
      CellMainDiscriptionLabel.backgroundColor = UIColor.flatLime()
      CellChildImageView.image = UIImage(named: "NoSellectedImage.png")
      
      self.addSubview(CellDayLabel)
      self.addSubview(CellTitleLabel)
      self.addSubview(CellMainDiscriptionLabel)
      self.addSubview(CellChildImageView)
   }
   
   private func OutLayoutCellLabel() {
      CellDayLabel.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(5)
         make.leading.equalTo(self.snp.leading).offset(5)
         make.width.equalTo(self.frame.width / 3)
         make.height.equalTo(self.frame.height / 10)
      }
      
      CellTitleLabel.snp.makeConstraints { make in
         make.top.equalTo(CellDayLabel.snp.bottom).offset(5)
         make.leading.equalTo(self.snp.leading).offset(5)
         make.width.equalTo(self.frame.width / 2)
         make.height.equalTo(self.frame.height / 3)
      }
      
      CellMainDiscriptionLabel.snp.makeConstraints { make in
         make.top.equalTo(CellTitleLabel.snp.bottom).offset(5)
         make.leading.equalTo(self.snp.leading).offset(5)
         make.width.equalTo(self.frame.width / 2)
         make.height.equalTo(self.frame.height / 4)
      }
      
      CellChildImageView.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(5)
         make.leading.equalTo(CellTitleLabel.snp.trailing).offset(5)
         make.width.equalTo(self.frame.height / 10 * 8)
         make.height.equalTo(self.frame.height / 10 * 8)
      }
   }
   
   func setupContents(textName: String) {
      //fruitsNameLabel.text = textName
      //fruitsNameLabel.textColor = UIColor.gray
  
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented.")
   }
}
