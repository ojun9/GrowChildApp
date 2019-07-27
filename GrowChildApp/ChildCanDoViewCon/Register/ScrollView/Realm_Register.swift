//
//  Realm_Register.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/20.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import RealmSwift
import Realm

class CanDoRegiData: Object {
   
   static let realm = try! Realm()
   
   @objc dynamic var Day: String = ""
   @objc dynamic var Title: String = ""
   @objc dynamic var Memo: String = ""
   @objc dynamic var ImageData: NSData? = nil


   public func Save() {
      try! CanDoRegiData.realm.write {
         CanDoRegiData.realm.add(self)
      }
   }
}

class CanDoRegiDataBase {
   let realm = try! Realm()
   
   public func AddCanDo(Day: String, Title: String, Memo: String, ImageData: NSData?) {
      let AddData = CanDoRegiData()
      AddData.Day = Day
      AddData.Title = Title
      AddData.Memo = Memo
      AddData.ImageData = ImageData
      
      try! realm.write {
         realm.add(AddData)
      }
   }
   
   public func GetDayFromDataNumber(DataNum: Int) -> String {
      return realm.objects(CanDoRegiData.self)[DataNum].Day
   }
   
   public func GetDataCountOfDataBaseDataCount() -> Int {
      return realm.objects(CanDoRegiData.self).count
   }
   
   public func GetTitleFromDataNumber(DataNum: Int) -> String {
      return realm.objects(CanDoRegiData.self)[DataNum].Title
   }
   
   public func GetMemoFromDataNumber(DataNum: Int) -> String {
      return realm.objects(CanDoRegiData.self)[DataNum].Memo
   }
   
   public func GetImageDataFromDataNumber(DataNum: Int) -> NSData? {
      return realm.objects(CanDoRegiData.self)[DataNum].ImageData
   }
   
   
   
   
}
