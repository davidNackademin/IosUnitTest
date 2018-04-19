//
//  TwoStrings.swift
//  UnitTestLesson
//
//  Created by David Svensson on 2017-04-12.
//  Copyright © 2017 David Svensson. All rights reserved.
//

import Foundation

class TwoStrings {
    var stringOne:String
    var stringTwo:String
    
    init(one: String, two: String) {
        stringOne = one
        stringTwo = two
    }
    
    func concatenate() -> String {
        return stringOne + stringTwo
    }
    
    func subtract() -> String {
        if stringTwo.count >= stringOne.count {
            return ""
        }
  
        let index = stringOne.index(stringOne.startIndex, offsetBy: stringTwo.count )
        let subString = stringOne[index...]
        //let subString = stringOne.suffix(from: index)
        //let subString = stringOne.suffix(stringTwo.count - 1)
        
        return String(subString)
    }
}
