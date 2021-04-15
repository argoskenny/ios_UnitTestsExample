//
//  LogAnalyzerStub4.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/15.
//

import Foundation

class LogAnalyzerUsingFactoryMethod {
    
    public func isValidFile(fileName: String) -> Bool {
        let extensionManager = getManager()
        return extensionManager.isValid(fileName: fileName)
    }
    
    public func getManager() -> IExtensionManager {
        return FileExtensionManager()
    }
}

class TestableLogAnalyzer: LogAnalyzerUsingFactoryMethod {
    
    private var extensionManager: IExtensionManager
    
    init(extensionManager: IExtensionManager) {
        self.extensionManager = extensionManager
    }
    
    override func getManager() -> IExtensionManager {
        return extensionManager
    }
}
