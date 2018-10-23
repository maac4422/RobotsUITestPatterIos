//
//  LoginTestRobot.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest
class LoginTestRobot {
    var app: XCUIApplication!
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func setUsername(_ username: String) {
        let loginTextEntry = app.textFields["Username"]
        loginTextEntry.tap()
        loginTextEntry.typeText(username)
        KeyborardHelper.closeKeyboard(app: app)
    }
    
    func setPassword(_ password: String){
        let passwordTextEntry = app.secureTextFields["Password"]
        passwordTextEntry.tap()
        passwordTextEntry.typeText(password)
        KeyborardHelper.closeKeyboard(app: app)
    }
    
    func pressLoginButton(){
        let loginButton = app.buttons["Login"]
        loginButton.tap()
    }
    
    func matchErrorAlert(title expectedTitle: String,message expectedError: String){
        let alertError = app.alerts
        XCTAssertEqual(alertError.element.label,expectedTitle)
        XCTAssert(alertError.element.staticTexts[expectedError].exists)
    }
}
