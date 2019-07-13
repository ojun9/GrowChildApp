//
//  ExImagePickUpDelegate.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import RSKImageCropper

extension ChildCandoRegisterViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
   func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
      // キャンセルボタンを押された時に呼ばれる
      print("イメージピッカーでキャンセル押された")
   }
   
  func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
   
      print("イメージピッカーで画像が選択された")
   
      let image = info[.originalImage] as! UIImage
   
      picker.dismiss(animated: false, completion: {
         print("クロップViewに遷移")
         self.ShowCropView(image: image)
      })
   }
   
   
   func ShowCropView(image: UIImage) {
      let imageCropVC = RSKImageCropViewController(image: image, cropMode: .square)
      imageCropVC.moveAndScaleLabel.text = "切り取り範囲を選択"
      imageCropVC.cancelButton.setTitle("キャンセル", for: .normal)
      imageCropVC.chooseButton.setTitle("完了", for: .normal)
      imageCropVC.delegate = self
      
      let transition = CATransition()
      transition.duration = 0.5
      transition.type = CATransitionType.push
      transition.subtype = CATransitionSubtype.fromRight
      transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
      view.window!.layer.add(transition, forKey: kCATransition)
      present(imageCropVC, animated: false)
   }
}


