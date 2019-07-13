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
      
      snapshot("1")
      
      let app = XCUIApplication()
      let candoregibuttonButton = app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      candoregibuttonButton.tap()
      
      snapshot("2")
      
      let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
      element.tap()
      
      snapshot("3")
      
      let childcandomainviewcontrollernabitabbarNavigationBar = app.navigationBars["ChildCanDoMainViewControllerNabiTabBar"]
      let backButton = childcandomainviewcontrollernabitabbarNavigationBar.buttons["Back"]
      backButton.tap()
      
      snapshot("4")
      
      let tabBarsQuery = app.tabBars
      let mostViewedButton = tabBarsQuery.buttons["Most Viewed"]
      mostViewedButton.tap()
      
      snapshot("5")
      
      let bookmarksButton = tabBarsQuery.buttons["Bookmarks"]
      bookmarksButton.tap()
      
      snapshot("6")
      
      let favoritesButton = tabBarsQuery.buttons["Favorites"]
      favoritesButton.tap()
      
      snapshot("7")
      
      let candoseebuttonButton = app/*@START_MENU_TOKEN@*/.buttons["CanDoSeeButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoSeeButton\"]",".buttons[\"CanDoSeeButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      candoseebuttonButton.tap()
      bookmarksButton.tap()
      
      snapshot("8")
      
      app.navigationBars["授乳タイマー"].buttons["Add"].tap()
      mostViewedButton.tap()
      favoritesButton.tap()
      
      snapshot("9")
      
      backButton.tap()
      childcandomainviewcontrollernabitabbarNavigationBar/*@START_MENU_TOKEN@*/.staticTexts["ChildNameLabel"]/*[[".staticTexts[\"NavigationBarCustomViewImageAndName\"]",".staticTexts[\"とりあえず\"]",".staticTexts[\"ChildNameLabel\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
      childcandomainviewcontrollernabitabbarNavigationBar.staticTexts["NavigationBarCustomViewImageAndName"].tap()
      candoseebuttonButton.tap()
      element.tap()
      
      snapshot("10")
     
    }
   

   
   
   func testPart3() {
      
      
      
      let app = XCUIApplication()
      let tabBarsQuery = app.tabBars
      tabBarsQuery.buttons["Bookmarks"].tap()
      
      snapshot("11")
      
      let element = app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element
      element.tap()
      
      snapshot("12")
      
      let favoritesButton = tabBarsQuery.buttons["Favorites"]
      favoritesButton.tap()
      tabBarsQuery.buttons["Most Viewed"].tap()
      favoritesButton.tap()
      favoritesButton.tap()
      favoritesButton.tap()
      favoritesButton.tap()
      favoritesButton.tap()
      
      snapshot("13")
      
      let candoregibuttonButton = app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      candoregibuttonButton.tap()
      
      snapshot("14")
      
      let childcandomainviewcontrollernabitabbarNavigationBar = app.navigationBars["ChildCanDoMainViewControllerNabiTabBar"]
      let backButton = childcandomainviewcontrollernabitabbarNavigationBar.buttons["Back"]
      backButton.tap()
      childcandomainviewcontrollernabitabbarNavigationBar.staticTexts["NavigationBarCustomViewImageAndName"].tap()
      app/*@START_MENU_TOKEN@*/.buttons["CanDoSeeButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoSeeButton\"]",".buttons[\"CanDoSeeButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      element.tap()
      element.tap()
      element.tap()
      element.tap()
      element.tap()
      backButton.tap()
      
      snapshot("15")
      
      let childcandomainviewcontrollerviewElement = app.otherElements["ChildCanDoMainViewControllerView"]
      childcandomainviewcontrollerviewElement.tap()
      favoritesButton.tap()
      childcandomainviewcontrollerviewElement.tap()
      element.tap()
      childcandomainviewcontrollerviewElement.tap()
      candoregibuttonButton.tap()
      
      snapshot("16")
      
      let navigationbarcustomviewimageandtextStaticText = childcandomainviewcontrollernabitabbarNavigationBar.staticTexts["NavigationBarCustomViewImageAndText"]
      navigationbarcustomviewimageandtextStaticText.tap()
      navigationbarcustomviewimageandtextStaticText.tap()
      navigationbarcustomviewimageandtextStaticText.tap()
      
      
      snapshot("17")
   }

}
