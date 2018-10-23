//
//  BaseTestRobot.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest

class BaseTestRobot {
    
    func fillTextField(app: XCUIApplication,textFieldIdentifier: String,value: String, isSecure: Bool? = false){
        let textField = isSecure! ? app.secureTextFields[textFieldIdentifier] : app.textFields[textFieldIdentifier]
        textField.tap()
        textField.typeText(value)
    }
    
    func clickButton(){
        
    }
    
}
