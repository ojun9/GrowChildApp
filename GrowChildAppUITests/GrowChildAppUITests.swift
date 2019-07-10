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
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
      
      let app = XCUIApplication()
      
      let testbutton = app.buttons["b"]
      let labb = app.staticTexts["lab"]
      
      XCTAssertEqual(labb.label, "0")
      
      snapshot("0Launch")
      
      testbutton.tap()
      testbutton.tap()
      
      
      
      XCTAssertEqual(labb.label, "2")
      XCTAssertTrue(testbutton.isEnabled)
      
      snapshot("1Launch")
      
      testbutton.tap()
      testbutton.tap()
      testbutton.press(forDuration: 1)
      testbutton.tap()
      testbutton.press(forDuration: 1)
      testbutton.tap(withNumberOfTaps: 4, numberOfTouches: 4)
      
      XCTAssertEqual(labb.label, "11")
      
      snapshot("2Launch")
    }
   
   
   
   func testPart2() {
      let app = XCUIApplication()
      let bButton = app.buttons["b"]
      bButton.tap()
      bButton.tap()
      app/*@START_MENU_TOKEN@*/.staticTexts["lab"]/*[[".staticTexts[\"4\"]",".staticTexts[\"lab\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      bButton.tap()
      bButton.tap()
      app/*@START_MENU_TOKEN@*/.staticTexts["lab"]/*[[".staticTexts[\"7\"]",".staticTexts[\"lab\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      let bElement = app.otherElements.containing(.button, identifier:"b").element
      bElement.tap()
      bElement.tap()
      bElement.tap()
      XCUIDevice.shared.orientation = .portrait
      XCUIDevice.shared.orientation = .portrait
      XCUIDevice.shared.orientation = .faceUp
      XCUIDevice.shared.orientation = .portrait
      XCUIDevice.shared.orientation = .faceUp
   }

}
