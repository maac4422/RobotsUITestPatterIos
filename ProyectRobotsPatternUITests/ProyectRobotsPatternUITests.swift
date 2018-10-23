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
    var loginTestRobot: LoginTestRobot!
    var detailTestRobot: DetailTestRobot!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        loginTestRobot = LoginTestRobot(app: app)
        detailTestRobot = DetailTestRobot(app: app)
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testLoginWithEmptyFields() {
        //arrange
        
        //act
        loginTestRobot
            .pressLoginButton()
            .matchErrorAlert(title: "Error",message: "The fields must be complete!")
        
        //assert
        
    }
    
    func testLoginWithOneFieldEmpty(){
        //arrange
        let userName = "user"
        
        //act
        loginTestRobot
            .setUsername(userName)
            .pressLoginButton()
            .matchErrorAlert(title: "Error",message: "The fields must be complete!")
        //assert
        
    }
    
    func testLoginWithCorrectCredentials(){
        //arrange
        let userName = "user"
        let password = "123"
        
        //act
        loginTestRobot
            .setUsername(userName)
            .setPassword(password)
            .pressLoginButton()
        
        //assert
        detailTestRobot.areLoadSuccess()
    }
    
    func testLoginWithIncorrectCredentials(){
        //arrange
        let userName = "user"
        let password = "1234"
        
        //act
        loginTestRobot
            .setUsername(userName)
            .setPassword(password)
            .pressLoginButton()
            .matchErrorAlert(title: "Error",message: "User or Password incorrect!")
        
        //assert
        
    }
}
