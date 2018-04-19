//
//  MyClassTest.swift
//  UnitTestLessonTests
//
//  Created by David Svensson on 2018-04-19.
//  Copyright © 2018 David Svensson. All rights reserved.
//

import XCTest
@testable import UnitTestLesson

class MyClassTest: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    
    func testExample() {
        let c = MyClass()
        
        let result = c.add(a: 1, b: 3)
        
        XCTAssertEqual(result, 4, "Addition is wrong")

        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
