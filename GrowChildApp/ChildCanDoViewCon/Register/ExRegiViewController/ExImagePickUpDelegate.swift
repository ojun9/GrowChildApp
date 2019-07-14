//
//  ExImagePickUpDelegate.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/13.
//  Copyright © 2019 jun. All rights reserved.
//

import Foundation
import UIKit
import CropViewController

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
      let CropVC = CropViewController(croppingStyle: .default, image: image)
      CropVC.cancelButtonTitle = "キャンセル"
      CropVC.doneButtonTitle = "完了"
      CropVC.resetButtonHidden = true
      CropVC.aspectRatioPreset = .presetSquare
      CropVC.resetAspectRatioEnabled = false
      CropVC.aspectRatioLockEnabled = true
      CropVC.delegate = self
      
      let transition = CATransition()
      transition.duration = 0.5
      transition.type = CATransitionType.push
      transition.subtype = CATransitionSubtype.fromRight
      transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
      view.window!.layer.add(transition, forKey: kCATransition)
      present(CropVC, animated: false)
   }
}


