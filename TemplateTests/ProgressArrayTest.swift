//
//  ProgressArrayTests.swift
//  PETTests
//
//  Created by liuyal on 10/31/17.
//  Copyright © 2017 TEAMX. All rights reserved.
//
import XCTest
import Firebase
//import Nimble
//@testable import PET
@testable import Template


class ProgressArrayTests: XCTestCase {
    
    var P1: ProgressArray!
    var P2: ProgressArray!
    var P3: ProgressArray!
    
    
    override func setUp() {
        super.setUp()
        
        // Put setup code here. This method is called before the invocation of each test method in the class.
        // use empty initializer
        P1 = ProgressArray()
        P2 = ProgressArray(useriD: "12345", emotionIn: [.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared, .happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared,.happy, .sad, .angry, .scared], StateIn: [.initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial, .initial])
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        P1 = nil
        P2 = nil
        super.tearDown()
    }
    
    func testP1Init() {
        XCTAssert(P1.userID == "")
    }
    
    func testP2Init() {
        XCTAssert(P2.userID == "12345")
    }
    
}
