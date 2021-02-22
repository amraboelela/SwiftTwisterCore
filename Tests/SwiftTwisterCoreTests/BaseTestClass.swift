//
//  BaseTestClass.swift
//  SwiftTwisterCoreTests
//
//  Created by: Amr Aboelela on 2/22/21.
//

import XCTest
import SwiftTwisterCore

@testable import SwiftTwisterCore

class BaseTestClass: XCTestCase {
    
    var twisterCore : TwisterCore?
    
    override func setUp() {
        super.setUp()
        
        twisterCore = TwisterCore()
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
