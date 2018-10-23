//
//  KeyborardHelper.swift
//  ProyectRobotsPatternUITests
//
//  Created by Soporte Ceiba on 10/23/18.
//  Copyright © 2018 Miguel Angel Arenas Correa. All rights reserved.
//

import XCTest

final class KeyborardHelper {
    private init() {
        
    }
    
    static func closeKeyboard(app: XCUIApplication){
        let firstKey = app.keys.element(boundBy: 0)
        if firstKey.exists {
            app.typeText("\n")
        }
    }
}
