//
//  ProyectRobotsPatternUITests.swift
//  ProyectRobotsPatternUITests
//
//  Created by Miguel Angel Arenas Correa on 16/10/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest

class ProyectRobotsPatternUITests: XCTestCase {
    
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testLoginWithEmptyFields() {
        //arrange
        let loginButton = app.buttons["Login"]
        let alertError = app.alerts
        
        //act
        loginButton.tap()
        
        //assert
        XCTAssertEqual(alertError.element.label,"Error")
        XCTAssert(alertError.element.staticTexts["The fields must be complete!"].exists)
    }
    
    func testLoginWithOneFieldEmpty(){
        //arrange
        let userName = "user"
        let loginTextEntry = app.textFields["Username"]
        let loginButton = app.buttons["Login"]
        let alertError = app.alerts
        
        //act
        loginTextEntry.tap()
        
        loginTextEntry.typeText(userName)
        closeKeyboard()
        loginButton.tap()
        
        //assert
        XCTAssertEqual(alertError.element.label,"Error")
        XCTAssert(alertError.element.staticTexts["The fields must be complete!"].exists)
    }
    
    func testLoginWithCorrectCredentials(){
        //arrange
        let userName = "user"
        let password = "123"
        let loginTextEntry = app.textFields["Username"]
        let passwordTextEntry = app.secureTextFields["Password"]
        let loginButton = app.buttons["Login"]
        let detailViewTitle = app.staticTexts["DETALLE MEDELLIN iOS"]
        
        //act
        loginTextEntry.tap()
        loginTextEntry.typeText(userName)
        closeKeyboard()
        passwordTextEntry.tap()
        passwordTextEntry.typeText(password)
        closeKeyboard()
        loginButton.tap()
        
        //assert
        XCTAssert(detailViewTitle.exists)
    }
    
    func testLoginWithIncorrectCredentials(){
        //arrange
        let userName = "user"
        let password = "1234"
        let loginTextEntry = app.textFields["Username"]
        let passwordTextEntry = app.secureTextFields["Password"]
        let loginButton = app.buttons["Login"]
        let alertError = app.alerts
        
        //act
        loginTextEntry.tap()
        loginTextEntry.typeText(userName)
        closeKeyboard()
        passwordTextEntry.tap()
        passwordTextEntry.typeText(password)
        closeKeyboard()
        loginButton.tap()
        
        //assert
        XCTAssertEqual(alertError.element.label,"Error")
        XCTAssert(alertError.element.staticTexts["User or Password incorrect!"].exists)
    }
    
    func closeKeyboard() {
        app.keyboards.buttons["Hide keyboard"]
        let firstKey = app.keys.element(boundBy: 0)
        if firstKey.exists {
            app.typeText("\n")
        }
    }
    
}
