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
      snapshot("1")
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      snapshot("2")
      app/*@START_MENU_TOKEN@*/.images["SellectImageView"]/*[[".scrollViews[\"RegiScrollView\"].images[\"SellectImageView\"]",".images[\"SellectImageView\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      snapshot("3")
      app.sheets["(name)の写真を登録"].buttons["キャンセル"].tap()
      snapshot("4")
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegisterButton"]/*[[".scrollViews[\"RegiScrollView\"].buttons[\"CanDoRegisterButton\"]",".buttons[\"CanDoRegisterButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
     snapshot("5")

   
    }
   

   

   func testPart3() {
  
      
      
      
      let app = XCUIApplication()
      
      snapshot("6")
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      snapshot("7")
      app.scrollViews.children(matching: .textField).element.tap()
      snapshot("8")
      
//      app.keys["H"].tap()
//      app.keys["e"].tap()
//      snapshot("9")
//      app.keys["space"].tap()
//      app.keys["c"].tap()
//      app.keys["a"].tap()
//      app.keys["n"].tap()
//      snapshot("10")
//      app.keys["space"].tap()
//      app.keys["p"].tap()
//      app.keys["l"].tap()
//      app.keys["a"].tap()
//      app.keys["y"].tap()
//      snapshot("11")
//      app.keys["space"].tap()
//      app.keys["t"].tap()
//      app.keys["e"].tap()
//      app.keys["n"].tap()
//      app.keys["n"].tap()
//      app.keys["i"].tap()
//      app.keys["s"].tap()
//      snapshot("12")
//
//      app.keys["space"].tap()
//      snapshot("13")
//      app.buttons["Done"].tap()
//      snapshot("14")
      let childcandomainviewcontrollernabitabbarNavigationBar = app.navigationBars["ChildCanDoMainViewControllerNabiTabBar"]
//      childcandomainviewcontrollernabitabbarNavigationBar.staticTexts["NavigationBarCustomViewImageAndText"].tap()
      childcandomainviewcontrollernabitabbarNavigationBar.buttons["Back"].tap()
      snapshot("15")
   }
   
   func testPart4() {
      
      let app = XCUIApplication()
      snapshot("16")
      app/*@START_MENU_TOKEN@*/.buttons["CanDoSeeButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoSeeButton\"]",".buttons[\"CanDoSeeButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      snapshot("17")
      
      let tabBarsQuery = app.tabBars
      
      tabBarsQuery.buttons["Bookmarks"].tap()
      snapshot("18")
      tabBarsQuery.buttons["Favorites"].tap()
      snapshot("19")
      
      app.swipeUp()
      
      app.navigationBars["ChildCanDoMainViewControllerNabiTabBar"].buttons["Back"].tap()
      snapshot("20")
   }
   
   
   func testPart5() {
      
   
   }

}
