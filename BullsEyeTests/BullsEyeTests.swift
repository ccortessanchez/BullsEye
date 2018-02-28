//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by Carlos Cortés Sánchez on 28/02/2018.
//  Copyright © 2018 Ray Wenderlich. All rights reserved.
//

import XCTest

@testable import BullsEye

class BullsEyeTests: XCTestCase {
    
    var gameUnderTest: BullsEyeGame!
    
    override func setUp() {
        super.setUp()
        
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        gameUnderTest = nil
        
        super.tearDown()
    }
    
    // XCTAssert to test model
    func testScoreIsComputed() {
        let guess = gameUnderTest.targetValue + 5
        _ = gameUnderTest.check(guess: guess)
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computed from guess is wrong")
    }
}
