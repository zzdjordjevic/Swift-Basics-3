//
//  LogIn.swift
//  LoggingAppUITests
//
//  Created by Zorana Djordjevic on 10/11/19.
//  Copyright © 2019 Zorana Djordjevic. All rights reserved.
//

import XCTest

class LogIn: LoggingAppUITests {
    
    
    func testSingInPageElements() {
          let app = XCUIApplication()
        
          XCTAssert(app.textFields[SingInScreenElements.userNameSingInTextField].exists,
                    "User Name")
          XCTAssert(app.textFields[SingInScreenElements.passwordSingInTextField].exists,
                    "Password")
          XCTAssert(app.buttons[LogInPageElements.singInButton].exists,
                    "Sing In")
          XCTAssert(app.staticTexts[SingInScreenElements.staticTextAccount].exists,
                    "Don't have an account?")
          XCTAssert(app.buttons[LogInPageElements.singUpButton].exists,
                    "Sing Up")
      }
    
        func testTapSingInButton() {
                let appTest = XCUIApplication()
                let tapButton = appTest.buttons[LogInPageElements.singInButton]
                tapButton.tap()
            }

    func testSingUpButton() {
        let app = XCUIApplication()
        let tapButton = app.buttons[LogInPageElements.singUpButton]
        tapButton.tap()
    }

    func testSingIn(){
        let app = XCUIApplication()
        app.textFields[SingInScreenElements.userNameSingInTextField].tap()
        
        XCTAssertTrue(app.keyboards.firstMatch.exists)
        enterUserName(nameToEnter: ValidationData.nameForUser)
        
        app.textFields[SingInScreenElements.passwordSingInTextField].tap()
        
        enterPassword(passwordToEnter: ValidationData.pass)
        
        app.buttons[LogInPageElements.singInButton].tap()

    }
    
    func testSingInWithoutPassword() {
        let app = XCUIApplication()
        app.textFields[SingInScreenElements.userNameSingInTextField].tap()
        
        enterUserName(nameToEnter: ValidationData.nameForUser)
        
        app.buttons[LogInPageElements.singInButton].tap()
        
        app.buttons.element(boundBy: 2).tap()
    }
    
    func testSingInWithoutUserName() {
        let app = XCUIApplication()
        
    }
    
    
    
}

public struct ValidationData {
    static let nameForUser = "Miki Maus"
    static let pass = "1234"
}
