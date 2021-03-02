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
    
    func getLibraryPath() -> String {
        let libraryDirectory = FileManager.default.urls(for: .libraryDirectory, in: .userDomainMask).first!
        return libraryDirectory.absoluteString
    }
    
    override func setUp() {
        super.setUp()
        var dataPath = NSURL(fileURLWithPath: name).path ?? ""
        if dataPath == "/" + name {
            let libraryPath = getLibraryPath()
            dataPath = NSURL(fileURLWithPath: libraryPath, isDirectory: true).appendingPathComponent(name)?.path ?? ""
        }
        twisterCore = TwisterCore(dataPath: dataPath)
    }
    
    override func tearDown() {
        super.tearDown()
    }
}
