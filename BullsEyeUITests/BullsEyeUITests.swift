//
//  BullsEyeUITests.swift
//  BullsEyeUITests
//
//  Created by Carlos Cortés Sánchez on 28/02/2018.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

class BullsEyeUITests: XCTestCase {
    
    var app: XCUIApplication!
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        
        // In UI tests it is usually best to stop immediately when a failure occurs.
        continueAfterFailure = false
        // UI tests must launch the application that they test. Doing this in setup will make sure it happens for each test method.
        app = XCUIApplication()
        app.launch()

        // In UI tests it’s important to set the initial state - such as interface orientation - required for your tests before they run. The setUp method is a good place to do this.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGameStyleSwitch() {
        // Use recording to get started writing UI tests.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        let slideButton = app.segmentedControls.buttons["Slide"]
        let typeButton = app.segmentedControls.buttons["Type"]
        let slideLabel = app.staticTexts["Get as close as you can to: "]
        let typeLabel = app.staticTexts["Guess where the slider is: "]
        
        if slideButton.isSelected {
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
            
            typeButton.tap()
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
        } else if typeButton.isSelected {
            XCTAssertTrue(typeLabel.exists)
            XCTAssertFalse(slideLabel.exists)
            
            slideButton.tap()
            XCTAssertTrue(slideLabel.exists)
            XCTAssertFalse(typeLabel.exists)
        }
    }
    
}
