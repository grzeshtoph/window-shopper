//
//  window_shopper_tests.swift
//  window-shopper-tests
//
//  Created by Greg Smorag on 12/12/2017.
//  Copyright © 2017 Greg Smorag. All rights reserved.
//

import XCTest

class window_shopper_tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testCalculateWage() {
        XCTAssertEqual(Wage.getHours(forWage: 25, andPrice: 100), 4)
        XCTAssertEqual(Wage.getHours(forWage: 15.50, andPrice: 250.53), 17)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
