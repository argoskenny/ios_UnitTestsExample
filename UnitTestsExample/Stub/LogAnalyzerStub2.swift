//
//  LogAnalyzerStub2.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/15.
//

import Foundation

class LogAnalyzerStub2 {
    
    private var extensionManager: IExtensionManager?
    
    public func setExtensionManager(extensionManager: IExtensionManager) {
        self.extensionManager = extensionManager
    }
    
    public func isValidFile(fileName: String) -> Bool {
        return extensionManager?.isValid(fileName: fileName) ?? false
    }
}
