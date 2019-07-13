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
      let candoregibuttonButton = app.buttons["CanDoRegiButton"]
      candoregibuttonButton.tap()
      XCUIDevice.shared.orientation = .portrait
      
      snapshot("1")
      
      let button = app.navigationBars["でき"].buttons["できたこと"]
      button.tap()
      
      snapshot("2")
      
      let candoseebuttonButton = app.buttons["CanDoSeeButton"]
      candoseebuttonButton.tap()
      XCUIDevice.shared.orientation = .faceUp
      button.tap()
      
      snapshot("3")
      
      let tabBarsQuery = app.tabBars
      let mostViewedButton = tabBarsQuery.buttons["Most Viewed"]
      mostViewedButton.tap()
      
      snapshot("4")
      
      let favoritesButton = tabBarsQuery.buttons["Favorites"]
      favoritesButton.tap()
      candoregibuttonButton.tap()
      app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.tap()
      mostViewedButton.tap()
      favoritesButton.tap()
      button.tap()
      
      snapshot("5")
      
      candoseebuttonButton.tap()
      tabBarsQuery.buttons["Bookmarks"].tap()
      mostViewedButton.tap()
      favoritesButton.tap()
      button.tap()
      
   
      snapshot("6")
      
    }
   

   
   
   func testPart3() {
      
      
      
   }

}
