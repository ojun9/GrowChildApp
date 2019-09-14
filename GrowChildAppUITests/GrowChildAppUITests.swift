//
//  GrowChildAppUITests.swift
//  GrowChildAppUITests
//
//  Created by jun on 2019/07/10.
//  Copyright © 2019 jun. All rights reserved.
//

import XCTest

class GrowChildAppUITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.

        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false

        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        //XCUIApplication().launch()

      let app = XCUIApplication()
      setupSnapshot(app)
      app.launch()
      
        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    
   
   }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

   func testExample() {
      let app = XCUIApplication()
      app.buttons["CanDoRegiButton"].tap()
      app/*@START_MENU_TOKEN@*/.images["SellectImageView"]/*[[".scrollViews[\"RegiScrollView\"].images[\"SellectImageView\"]",".images[\"SellectImageView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      app.sheets["(name)の写真を登録"].buttons["キャンセル"].tap()
      snapshot("4")
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegisterButton"]/*[[".scrollViews[\"RegiScrollView\"].buttons[\"CanDoRegisterButton\"]",".buttons[\"CanDoRegisterButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
    }
   
   func testRegisterChildCanDo() {
      let app = XCUIApplication()
      app.buttons["CanDoRegiButton"].tap()
      
      let CanDoTextField = app.textFields["CanDoTextField"]
      CanDoTextField.tap()
      CanDoTextField.typeText("ハイハイ")
      
      let MemoOfTextView = app.textViews["MemoOfTextView"]
      MemoOfTextView.tap()
      MemoOfTextView.typeText("朝にできた。\n嬉しかったよ。")
      
      
      let CandoTextLabel = app.staticTexts["CanDoTextLabel"]
      CandoTextLabel.tap()

      MemoOfTextView.swipeUp()
      
      
      let RegiButton = app.buttons["CanDoRegisterButton"]
      RegiButton.tap()
      
            
            
   }
   
   func test4() {
                  
   }

}
