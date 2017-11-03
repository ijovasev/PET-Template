//
//  PETTests.swift
//  PETTests
//
//  Created by Wolf on 2017-10-18.
//  Copyright © 2017 TEAMX. All rights reserved.
//
import XCTest
import Firebase
//import Nimble
//@testable import PET
@testable import Template


class QuestionClassTests: XCTestCase {
    
    // initialize tester objects
    var Q1: QuestionClass!
    var Q2: QuestionClass!
    var Q3: QuestionClass!
    var Q4: QuestionClass!
    var Q5: QuestionClass!
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
    override func setUp() {
        super.setUp()
        // use empty initializer
        Q1 = QuestionClass()
        //Test the default initializer with all valid values
        Q2 = QuestionClass(levelID: 1, questionID: 1, emotion: .sad, errCnt: 1, questionState: .initial, imageFileRef: "Blank")
        //test with invalid levelID, questionID and errCnt
        Q3 = QuestionClass(levelID: -1, questionID: -999, emotion: .sad, errCnt: -400, questionState: .initial, imageFileRef: "Blank")
        //test with invalid levelID, questionID and errCnt
        //Note: in this state errCnt actually gets set to 999999
        Q4 = QuestionClass(levelID: 1000, questionID: 999, emotion: .sad, errCnt: 999999, questionState: .initial, imageFileRef: "Blank")
        // test with invalid levelID, invalid EMOTION
        //this gives us a BUILD error since it is not a valid emotion we cannot pass it into the initializer
        //Q5 = QuestionClass(levelID: -40, questionID: 9, emotion: .lit, errCnt: 5, questionState: .inital, imageFileRef: "Blank")
        
    }
    
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    override func tearDown() {
        super.tearDown()
        Q1 = nil
        Q2 = nil
        Q3 = nil
        Q4 = nil
    }
    
    // Use recording to get started writing UI tests.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
    func testQ1init() {
        XCTAssertTrue(Q1.levelID == 0)
        XCTAssertTrue(Q1.questionID == 0)
        XCTAssertTrue(Q1.emotion == .happy)
        XCTAssertTrue(Q1.errCnt == 0)
        XCTAssertTrue(Q1.questionState == .initial)
        XCTAssertTrue(Q1.imageFileRef == "")
    }
    func testQ2init() {
        XCTAssertTrue(Q2.levelID == 1)
        XCTAssertTrue(Q2.questionID == 1)
        XCTAssertTrue(Q2.emotion == .sad)
        XCTAssertTrue(Q2.errCnt == 1)
        XCTAssertTrue(Q2.questionState == .initial)
        XCTAssertTrue(Q2.imageFileRef == "Blank")
    }
    func testQ3init() {
        XCTAssertTrue(Q3.levelID == 0)
        XCTAssertTrue(Q3.questionID == 0)
        XCTAssertTrue(Q3.emotion == .sad)
        XCTAssertTrue(Q3.errCnt == 0)
        XCTAssertTrue(Q3.questionState == .initial)
        XCTAssertTrue(Q3.imageFileRef == "Blank")
    }
    func testQ4init() {
        XCTAssertTrue(Q4.levelID == TIER_SIZE)
        XCTAssertTrue(Q4.questionID == Q_PER_TIER)
        XCTAssertTrue(Q4.emotion == .sad)
        XCTAssertTrue(Q4.errCnt == 999999)
        XCTAssertTrue(Q4.questionState == .initial)
        XCTAssertTrue(Q4.imageFileRef == "Blank")
    }
    
   /* func testQ5init() {
        XCTAssertTrue(Q4.levelID == 0)
        XCTAssertTrue(Q4.questionID == 9)
        XCTAssertTrue(Q4.emotion == .happy)
        XCTAssertTrue(Q4.errCnt == 5)
        XCTAssertTrue(Q4.questionState == .initial)
        XCTAssertTrue(Q4.imageFileRef == "Blank")
    }*/
    
    func testASFAS() {
        
        
    }
    
    func testPerformanceExample() {self.measure {}}
}

