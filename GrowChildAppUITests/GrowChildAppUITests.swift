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
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      snapshot("1")
      
      let scrollViewsQuery = app.scrollViews
      scrollViewsQuery.children(matching: .textField).element.tap()
      app/*@START_MENU_TOKEN@*/.keys["た"]/*[[".keyboards.keys[\"た\"]",".keys[\"た\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.swipeDown()
      
      snapshot("2")
      
      let key = app/*@START_MENU_TOKEN@*/.keys["あ"]/*[[".keyboards.keys[\"あ\"]",".keys[\"あ\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      
      
      snapshot("3")
      
      key.tap()
      key.tap()
      app/*@START_MENU_TOKEN@*/.buttons["Done"]/*[[".keyboards",".buttons[\"確定\"]",".buttons[\"Done\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
      app/*@START_MENU_TOKEN@*/.buttons["Done"]/*[[".keyboards",".buttons[\"完了\"]",".buttons[\"Done\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
      scrollViewsQuery.children(matching: .textView).element.tap()
      
      let key2 = app/*@START_MENU_TOKEN@*/.keys["か"]/*[[".keyboards.keys[\"か\"]",".keys[\"か\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      
      snapshot("4")
      
      key2.tap()
      key2.tap()
      
      snapshot("5")
      
      let key3 = app/*@START_MENU_TOKEN@*/.keys["は"]/*[[".keyboards.keys[\"は\"]",".keys[\"は\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      key3.tap()
      key3.tap()
      
      snapshot("6")
      
      app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"確定\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
      app/*@START_MENU_TOKEN@*/.buttons["Return"]/*[[".keyboards",".buttons[\"改行\"]",".buttons[\"Return\"]"],[[[-1,2],[-1,1],[-1,0,1]],[[-1,2],[-1,1]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      snapshot("7")
      
      app/*@START_MENU_TOKEN@*/.scrollViews.containing(.staticText, identifier:"できたこと・").element/*[[".scrollViews.containing(.image, identifier:\"NoSellectedImage.png\").element",".scrollViews.containing(.staticText, identifier:\"わたしのきもち\").element",".scrollViews.containing(.staticText, identifier:\"できたこと・\").element"],[[[-1,2],[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
     
      
      snapshot("8")
      
      
      
     
    }
   

   

   func testPart3() {
      let app = XCUIApplication()
      
      
      snapshot("9")
      
      app/*@START_MENU_TOKEN@*/.buttons["CanDoRegiButton"]/*[[".otherElements[\"ChildCanDoMainViewControllerView\"].buttons[\"CanDoRegiButton\"]",".buttons[\"CanDoRegiButton\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      snapshot("10")
      
      
      let nosellectedimagePngImage = app/*@START_MENU_TOKEN@*/.images["NoSellectedImage.png"]/*[[".scrollViews.images[\"NoSellectedImage.png\"]",".images[\"NoSellectedImage.png\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/
      nosellectedimagePngImage.tap()
      
      snapshot("11")
      
      let nameSheet = app.sheets["(name)の写真を登録"]
      
      
      nameSheet.buttons["キャンセル"].tap()
      
      
      snapshot("12")
      
      nosellectedimagePngImage.tap()
      nameSheet.buttons["写真を撮る"].tap()
      
      snapshot("13")
      
      
      app/*@START_MENU_TOKEN@*/.buttons["PhotoCapture"]/*[[".buttons[\"Take Picture\"]",".buttons[\"PhotoCapture\"]"],[[[-1,1],[-1,0]]],[0]]@END_MENU_TOKEN@*/.tap()
      
      
      snapshot("14")
      
      app.buttons["Use Photo"].tap()
      
      snapshot("15")
      
      app.children(matching: .window).element(boundBy: 0).children(matching: .other).element.children(matching: .other).element.children(matching: .other).element.children(matching: .other).element(boundBy: 0).children(matching: .scrollView).element.tap()
      
      
      snapshot("16")
      
      app.buttons["完了"].tap()
      
      
      snapshot("17")
      
      app.scrollViews.children(matching: .image).element.tap()
      
      
      snapshot("18")
      
      app.sheets["(name)の写真を変更"].buttons["現在の写真を削除"].tap()
   
      
      snapshot("19")
   }

}
