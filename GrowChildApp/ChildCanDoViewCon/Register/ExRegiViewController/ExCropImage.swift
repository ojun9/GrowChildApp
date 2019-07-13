//
//  ExCropImage.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import RSKImageCropper
import UIKit

extension ChildCandoRegisterViewController: RSKImageCropViewControllerDelegate {
   //キャンセルを押した時の処理
   func imageCropViewControllerDidCancelCrop(_ controller: RSKImageCropViewController) {
      print("Cropperでキャンセル押された")
      dismiss(animated: true, completion: nil)
   }
   //完了を押した後の処理
   func imageCropViewController(_ controller: RSKImageCropViewController, didCropImage croppedImage: UIImage, usingCropRect cropRect: CGRect, rotationAngle: CGFloat) {
      print("クロップで画像がトリミングされました")
      print("RegiScrollViewに画像を反映する")
      self.RegiScrollView?.SellectImageView?.SetUserSellectedImaeg(image: croppedImage)
      dismiss(animated: true)
      
   }
}
