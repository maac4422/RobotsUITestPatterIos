//
//  DetailTestRobot.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest

class DetailTestRobot {
    var app: XCUIApplication!
    
    init(app: XCUIApplication) {
        self.app = app
    }
    
    func areLoadSuccess(){
        let detailViewTitle = app.staticTexts["DETALLE MEDELLIN iOS"]
        XCTAssert(detailViewTitle.exists)
    }
}
