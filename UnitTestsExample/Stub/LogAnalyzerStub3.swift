//
//  LogAnalyzerStub3.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/15.
//

import Foundation

class LogAnalyzerStub3 {
    
    public func isValidFile(fileName: String) -> Bool {
        let extensionManager = ExtentionManagerFactory.create()
        return extensionManager.isValid(fileName: fileName)
    }
}

class ExtentionManagerFactory {
    
    static var customManager: IExtensionManager?
    
    class func create() -> IExtensionManager {
        if let customManager = ExtentionManagerFactory.customManager {
            return customManager
        }
        return FileExtensionManager()
    }
    
    class func setCustomManager(customManager: IExtensionManager) {
        ExtentionManagerFactory.customManager = customManager
    }
    
}
