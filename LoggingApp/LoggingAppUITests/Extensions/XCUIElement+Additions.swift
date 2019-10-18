//
//  XCUIElement+Additions.swift
//  LoggingAppUITests
//
//  Created by Zorana Djordjevic on 10/16/19.
//  Copyright © 2019 Zorana Djordjevic. All rights reserved.
//

import XCTest

extension XCUIElement {
    
    func clearText() {
        guard  let stringValue = self.value as? String else {
            return
        }
        
        var deleteString = String()
        for _ in stringValue {
            deleteString += XCUIKeyboardKey.delete.rawValue
        }
        self.typeText(deleteString)
    }
    
    func clearAndEnterText (_ text: String) {
        clearText()
        self.typeText(text)
    }
}
