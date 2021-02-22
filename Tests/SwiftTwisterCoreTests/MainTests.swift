//
//  MainTests.swift
//  SwiftTwisterCoreTests
//
//  Created by: Amr Aboelela on 2/22/21.
//

import XCTest

class MainTests: BaseTestClass {
    
    func testPostsFor() {
        let result = twisterCore?.postsFor(username: "bbc_world")
        print("result: \(result)")
        XCTAssertNotNil(result)
    }
    
    /*
    func testContentIntegrity() {
        guard let db = db else {
            print("\(Date.now) Database reference is not existent, failed to open / create database")
            return
        }
        let key = "dict1"
        let value1 = Foo(foo: "bar")
        db[key] = value1
        var fooValue: Foo? = db[key]
        XCTAssertEqual(fooValue, value1, "Saving and retrieving should keep an dictionary intact")
        db.removeValueForKey("dict1")
        fooValue = db[key]
        XCTAssertNil(fooValue, "A deleted key should return nil")
        let value2 = Foo(foo: "bar")
        db[key] = FooContainer(foo: value2) //["array" : value2]
        let fooContainerValue: FooContainer? = db[key]
        XCTAssertEqual(fooContainerValue?.foo, value2, "Saving and retrieving should keep an array intact")
        //db.removeValuesForKeys(["array1"])
        //XCTAssertNil(db["array1"], "A key that was deleted in batch should return nil")
    }
    
    func testKeysManipulation() {
        guard let db = db else {
            print("\(Date.now) Database reference is not existent, failed to open / create database")
            return
        }
        let value = ["foo": "bar"]
        db["dict1"] = value
        db["dict2"] = value
        db["dict3"] = value
        let keys = ["dict1", "dict2", "dict3"]
        let keysFromDB = db.allKeys()
        XCTAssertEqual(keysFromDB, keys, "-[LevelDB allKeys] should return the list of keys used to insert data")
        db.removeAllValues()
        XCTAssertEqual(db.allKeys(), [], "The list of keys should be empty after removing all values from the database")
    }
    
    func testRemovingKeysWithPrefix() {
        guard let db = db else {
            print("\(Date.now) Database reference is not existent, failed to open / create database")
            return
        }
        let value = ["foo": "bar"]
        db["dict1"] = value
        db["dict2"] = value
        db["dict3"] = value
        db["array1"] = ["array" : [1, 2, 3]]
        db.removeAllValuesWithPrefix("dict")
        XCTAssertEqual(db.allKeys().count, Int(1), "There should be only 1 key remaining after removing all those prefixed with 'dict'")
    }*/
    
}
