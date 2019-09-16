//
//  ExCropImage.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import CropViewController

extension ChildCandoRegisterViewController: CropViewControllerDelegate {
   //キャンセルを押した時の処理
   func cropViewController(_ cropViewController: CropViewController, didFinishCancelled cancelled: Bool) {
      print("Cropperでキャンセル押された")
      if #available(iOS 13.0, *) {
         let viewController = cropViewController.children.first!
         viewController.modalTransitionStyle = .coverVertical
         viewController.presentingViewController?.dismiss(animated: true, completion: nil)
      }else{
         dismiss(animated: true, completion: nil)
      }
   }
   
  
   //完了を押した後の処理
   func cropViewController(_ cropViewController: CropViewController, didCropToImage image: UIImage, withRect cropRect: CGRect, angle: Int) {
      //加工した画像が取得できる
      print("クロップで画像がトリミングされました")
      print("RegiScrollViewに画像を反映する")
      self.RegiScrollView?.SellectImageView?.SetUserSellectedImaeg(image: image)
       if #available(iOS 13.0, *) {
         let viewController = cropViewController.children.first!
         viewController.modalTransitionStyle = .coverVertical
         viewController.presentingViewController?.dismiss(animated: true, completion: nil)
      }else{
         dismiss(animated: true, completion: nil)
      }
   }
}
