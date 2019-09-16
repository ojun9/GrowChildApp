//
//  GrowChildAppTestesPart2.swift
//  GrowChildAppTests
//
//  Created by jun on 2019/09/14.
//  Copyright © 2019 jun. All rights reserved.
//

import XCTest
@testable import GrowChildApp


class GrowChildAppTestsInShowTapeedCellViewController: XCTestCase {
   
   var ShowTappedVC: ShowTapeedCellViewController!

    override func setUp() {
      super.setUp()
      
      ShowTappedVC = ShowTapeedCellViewController()
      ShowTappedVC.viewDidLoad()
   }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
   
   func UnLapNavaiH(naviH: CGFloat?) -> CGFloat {
      if let Nav = naviH {
         return Nav
      }else{
         return 0
      }
   }

   func testAddStatusBarHAndNaviBarHIsRight() {
      let StutusH = ShowTappedVC.statusBarHeight
      let NaviH = ShowTappedVC.navigationBarHeight
      let SumOfH = StutusH + UnLapNavaiH(naviH: NaviH)
      XCTAssertEqual(ShowTappedVC.NaviAndStatusBarHeight, SumOfH)
   }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
