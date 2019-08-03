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
      
      
      InitCellLabel()
      OutLayoutCellLabel()
   }
   
   private func setup() {
      layer.borderColor = UIColor.black.cgColor
      layer.cornerRadius = 5
      layer.shadowColor = UIColor.black.cgColor
      layer.shadowOpacity = 0.4
      layer.shadowOffset = CGSize(width: 2.5, height: 2.5)
      layer.masksToBounds = false
      self.backgroundColor = UIColor.white
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
      
      CellChildImageView.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(self.frame.height / 10)
         make.trailing.equalTo(self.snp.trailing).offset(-self.frame.height / 10)
         make.width.equalTo(self.frame.height / 10 * 8)
         make.height.equalTo(self.frame.height / 10 * 8)
      }
      
      CellDayLabel.snp.makeConstraints { make in
         make.top.equalTo(self.snp.top).offset(self.frame.height / 10 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.height / 10 / 2)
         make.width.equalTo(self.frame.width / 3)
         make.height.equalTo(self.frame.height / 10 / 2 * 1.5)
      }
      
      CellTitleLabel.snp.makeConstraints { make in
         make.top.equalTo(CellDayLabel.snp.bottom).offset(self.frame.height / 10 / 2)
         make.leading.equalTo(self.snp.leading).offset(self.frame.height / 10)
         make.trailing.equalTo(CellChildImageView.snp.leading).offset(-self.frame.height / 10)
         make.height.equalTo(self.frame.height / 10 * 3)
      }
      
      CellMainDiscriptionLabel.snp.makeConstraints { make in
         make.top.equalTo(CellTitleLabel.snp.bottom).offset(self.frame.height / 10 / 2)
         make.leading.equalTo(self.frame.height / 10 * 1.5)
         make.trailing.equalTo(CellChildImageView.snp.leading).offset(-self.frame.height / 10)
         make.bottom.equalTo(self.snp.bottom).offset(-self.frame.height / 10 / 2)
      }
      
      
   }
   
   public func SetUpCellDayLabel(Day: String) {
      CellDayLabel.text = Day
   }
   
   public func SetUpCellTitleLabel(Title: String) {
      CellTitleLabel.text = Title
   }
   
   public func SetUpCellMainDiscriptionLabel(Memo: String) {
      CellMainDiscriptionLabel.text = Memo
   }
   
   public func SetUpCellChildImageView(ImageData: NSData?) {
      if let Data = ImageData {
         let Image = UIImage(data: Data as Data)
         CellChildImageView.image = Image
      }
   }
   
   required init?(coder aDecoder: NSCoder) {
      fatalError("init(coder:) has not been implemented.")
   }
}
