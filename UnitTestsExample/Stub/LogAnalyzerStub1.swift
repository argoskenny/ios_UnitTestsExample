//
//  LogAnalyzerStub1.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/15.
//

import Foundation

class LogAnalyzerStub1 {
    
    private var extensionManager: IExtensionManager
    
    init(extensionManager: IExtensionManager) {
        self.extensionManager = extensionManager
    }
    
    public func isValidFile(fileName: String) -> Bool {
        return extensionManager.isValid(fileName: fileName)
    }
}
