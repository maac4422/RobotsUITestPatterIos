//
//  LoginTestRobot.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest
class LoginTestRobot : BaseTestRobot {
    
    func setUsername(_ username: String) -> Self {
        fillTextField(textFieldIdentifier: "Username", value: username)
        return self
    }
    
    func setPassword(_ password: String) -> Self{
        fillTextField(textFieldIdentifier: "Password", value: password,isSecure: true)
        return self
    }
    
    func pressLoginButton() -> Self{
        pressButton("Login")
        return self
    }
    
    func matchErrorAlert(title expectedTitle: String,message expectedError: String) -> Self{
        let alertError = app.alerts
        XCTAssertEqual(alertError.element.label,expectedTitle)
        XCTAssert(alertError.element.staticTexts[expectedError].exists)
        return self
    }
}
