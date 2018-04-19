//
//  TwoStringsTests.swift
//  UnitTestLesson
//
//  Created by David Svensson on 2017-04-12.
//  Copyright © 2017 David Svensson. All rights reserved.
//

import XCTest
@testable import UnitTestLesson

class TwoStringsTests: XCTestCase {
    
    var myTwoStrings: TwoStrings!
    var oneShorter: TwoStrings!
    
    override func setUp() {
        super.setUp()
       
        //given
        myTwoStrings = TwoStrings(one: "david", two: "per")
        oneShorter = TwoStrings(one: "per", two: "david")
    }
    
    func testCanConcatenate() {
        
        //when
        let result = myTwoStrings.concatenate()
        
        //then
        XCTAssertEqual(result, "davidper", "addition is wrong")
    }
    
    func testCanSubtract() {
        
        //when
        let result = myTwoStrings.subtract()
        let resultOneShorter = oneShorter.subtract()
        
        //then
        XCTAssertEqual(result, "id", "Subtraction is wrong")
        XCTAssertEqual(resultOneShorter, "", "Subtraction is wrong")
    }
    
    func testPerformanceSubtraction() {
        // This is an example of a performance test case.
        self.measure {
            for _ in 1...100000 {
                _ = oneShorter.subtract()
            }
        }
    }
    
    
}
