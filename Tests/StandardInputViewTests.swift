//
//  StandardInputViewTests.swift
//  CheckoutSdkIosTests
//
//  Created by Floriel Fedry on 15/05/2018.
//  Copyright © 2018 Checkout. All rights reserved.
//

import XCTest
@testable import CheckoutSdkIos

class StandardInputViewTests: XCTestCase {

    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }

    func testEmptyInitialization() {
        let standardInputView = StandardInputView()
    }

    func testCoderInitialization() {
        let coder = NSKeyedUnarchiver(forReadingWith: Data())
        let standardInputView = StandardInputView(coder: coder)
    }

    func testFrameInitialization() {
        let standardInputView = StandardInputView(frame: CGRect(x: 0, y: 0, width: 400, height: 48))
    }

}