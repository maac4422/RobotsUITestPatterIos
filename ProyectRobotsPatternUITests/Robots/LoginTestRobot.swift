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
    
    func setUsername(_ username: String) -> Self {
        let loginTextEntry = app.textFields["Username"]
        loginTextEntry.tap()
        loginTextEntry.typeText(username)
        KeyborardHelper.closeKeyboard(app: app)
        return self
    }
    
    func setPassword(_ password: String) -> Self{
        let passwordTextEntry = app.secureTextFields["Password"]
        passwordTextEntry.tap()
        passwordTextEntry.typeText(password)
        KeyborardHelper.closeKeyboard(app: app)
        return self
    }
    
    func pressLoginButton() -> Self{
        let loginButton = app.buttons["Login"]
        loginButton.tap()
        return self
    }
    
    func matchErrorAlert(title expectedTitle: String,message expectedError: String) -> Self{
        let alertError = app.alerts
        XCTAssertEqual(alertError.element.label,expectedTitle)
        XCTAssert(alertError.element.staticTexts[expectedError].exists)
        return self
    }
}
