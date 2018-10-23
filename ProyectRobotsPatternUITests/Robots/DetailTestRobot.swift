//
//  DetailTestRobot.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest

class DetailTestRobot : BaseTestRobot {
    
    @discardableResult
    func areLoadSuccess() -> Self{
        let detailViewTitle = app.staticTexts[DetailConstants.titleIdentifier]
        XCTAssert(detailViewTitle.exists)
        return self
    }
}
