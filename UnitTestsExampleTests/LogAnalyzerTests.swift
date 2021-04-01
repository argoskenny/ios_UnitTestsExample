//
//  LogAnalyzerTests.swift
//  UnitTestsExampleTests
//
//  Created by KennyLin on 2021/4/1.
//

import XCTest
@testable import UnitTestsExample

class LogAnalyzerTests: XCTestCase {

    override func setUpWithError() throws {
    }

    override func tearDownWithError() throws {
    }

    func testIsValidFileName_BadExtension_ReturnsFalse() throws {
        let analyzer = LogAnalyzer1()
        XCTAssert(analyzer.isValidLogFileName(fileName: "abc.jpg") == false)
    }
    
    func testIsValidFileName_CorrectFileType_ReturnsTrue() throws {
        let analyzer = LogAnalyzer2()
        analyzer.isValidLogFileName(fileName: "abc.log")
        XCTAssert(analyzer.isFileValid == true)
    }

}
