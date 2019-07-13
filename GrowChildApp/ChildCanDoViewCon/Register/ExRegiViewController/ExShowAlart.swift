//
//  ExShowAlart.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit

extension ChildCandoRegisterViewController {
   
   func ShowUIImagePickerController() {
      let PickController = UIImagePickerController()
      PickController.delegate = self
      present(PickController, animated: true)
   }
   
    @objc func OpenActionSheetNowSellectedImageCatchNotification(notification: Notification) ->Void {
      print(" --- Sellect Image CatchNotificaion --- ")
      let Alert = UIAlertController(title: "(name)の写真を変更", message: nil, preferredStyle: .actionSheet)
      
      let DeletImageAction = UIAlertAction(title: "現在の写真を削除", style: .destructive, handler: { (action: UIAlertAction!) -> Void in
         print("現在の写真を削除が押された")
         self.RegiScrollView?.SellectImageView?.DeletNowImage()
      })
      
      let TakeImageAction = UIAlertAction(title: "写真を撮る", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("写真を撮るが押された")
      })
      
      let ChoseImageFromLibraryAction = UIAlertAction(title: "ライブラリから選択", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("ライブラリから選択が押された")
         self.ShowUIImagePickerController()
      })
      
      let CancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action: UIAlertAction!) -> Void in
         print("キャンセルが押された")
      })
      
      Alert.addAction(DeletImageAction)
      Alert.addAction(TakeImageAction)
      Alert.addAction(ChoseImageFromLibraryAction)
      Alert.addAction(CancelAction)
      
      present(Alert, animated: true, completion: nil)
   }
   
    @objc func OpenActionSheetNotSellectedImageCatchNotification(notification: Notification) ->Void {
      print(" --- NOT Sellect Image CatchNotificaion --- ")
      let Alert = UIAlertController(title: "(name)の写真を登録", message: nil, preferredStyle: .actionSheet)
      
      let TakeImageAction = UIAlertAction(title: "写真を撮る", style: .default, handler: { (action: UIAlertAction!) -> Void in
          print("写真を撮るが押された")
      })
      
      let ChoseImageFromLibraryAction = UIAlertAction(title: "ライブラリから選択", style: .default, handler: { (action: UIAlertAction!) -> Void in
         print("ライブラリから選択が押された")
         self.ShowUIImagePickerController()
      })
      
      let CancelAction = UIAlertAction(title: "キャンセル", style: .cancel, handler: { (action: UIAlertAction!) -> Void in
         print("キャンセルが押された")
      })
      
      Alert.addAction(TakeImageAction)
      Alert.addAction(ChoseImageFromLibraryAction)
      Alert.addAction(CancelAction)
      
      present(Alert, animated: true, completion: nil)
   }
}
