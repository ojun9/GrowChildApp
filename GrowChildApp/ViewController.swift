//
//  ViewController.swift
//  GrowChildApp
//
//  Created by jun on 2019/07/10.
//  Copyright © 2019 jun. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

   var lab = UILabel(frame: CGRect(x: 200, y: 200, width: 100, height: 100))
   let b = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
   
   override func viewDidLoad() {
      super.viewDidLoad()
      // Do any additional setup after loading the view.
      
      
      b.addTarget(self, action: #selector(tapb(sender:)), for: .touchUpInside)
      b.backgroundColor = .blue
      b.tag = 0
      b.accessibilityIdentifier = "b"
      self.view.addSubview(b)
      
      lab.text = String(b.tag)
      lab.accessibilityIdentifier = "lab"
      self.view.addSubview(lab)
   }
   
   @objc func tapb(sender: UIButton) {
      print("button on tap")
      b.tag += 1
      print(b.tag)
      lab.text = String(b.tag)
   }
   


   func getSt(text: String) -> String {
      return text
   }

}

