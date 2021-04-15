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

    func test_isValidFileName_BadExtension_ReturnsFalse() throws {
        let analyzer = LogAnalyzer1()
        let result = analyzer.isValidLogFileName(fileName: "abc.jpg")
        XCTAssert(result == false)
    }
    
    func test_isValidFileName_CorrectFileType_ReturnsTrue() throws {
        let analyzer = LogAnalyzer2()
        analyzer.isValidLogFileName(fileName: "/sss/abc.log")
        XCTAssert(analyzer.isFileValid == true)
    }
    
    func testStub1_isValidFile_BadExtension_Returnsfalse() throws {
        let fakeExtensionManager: AlwaysValidFakeExtensionManager = AlwaysValidFakeExtensionManager()
        let analyzer = LogAnalyzerStub1(extensionManager: fakeExtensionManager)
        let result = analyzer.isValidFile(fileName: "abc.json")
        XCTAssert(result == false)
    }
    
    func testStub2_isValidFile_BadExtension_Returnsfalse() throws {
        let fakeExtensionManager: AlwaysValidFakeExtensionManager = AlwaysValidFakeExtensionManager()
        let analyzer = LogAnalyzerStub2()
        analyzer.setExtensionManager(extensionManager: fakeExtensionManager)
        let result = analyzer.isValidFile(fileName: "abc.json")
        XCTAssert(result == false)
    }
    
    func testStub3_isValidFile_BadExtension_Returnsfalse() throws {
        let fakeExtensionManager: AlwaysValidFakeExtensionManager = AlwaysValidFakeExtensionManager()
        ExtentionManagerFactory.setCustomManager(customManager: fakeExtensionManager)
        let analyzer = LogAnalyzerStub3()
        let result = analyzer.isValidFile(fileName: "abc.json")
        XCTAssert(result == false)
    }
    
    func testStub4_isValidFile_BadExtension_Returnsfalse() throws {
        let fakeExtensionManager: AlwaysValidFakeExtensionManager = AlwaysValidFakeExtensionManager()
        let analyzer = TestableLogAnalyzer(extensionManager: fakeExtensionManager)
        let result = analyzer.isValidFile(fileName: "abc.json")
        XCTAssert(result == false)
    }

}
