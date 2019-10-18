//
//  LogIn+Helpers.swift
//  LoggingAppUITests
//
//  Created by Zorana Djordjevic on 10/15/19.
//  Copyright © 2019 Zorana Djordjevic. All rights reserved.
//

import XCTest

extension LogIn {
    
    func enterUserName (nameToEnter: String) {
        let app = XCUIApplication()
        let userName = app.textFields[SingInScreenElements.userNameSingInTextField]
        
        userName.tap()
            userName.typeText(nameToEnter)
        
    }
    
    func enterPassword (passwordToEnter: String) {
        let app = XCUIApplication()
        let userName = app.textFields[SingInScreenElements.passwordSingInTextField]
        
            userName.typeText(passwordToEnter)
        
    }
    
}
