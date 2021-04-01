//
//  LogAnalyzer2.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/1.
//

import Foundation

// 測試狀態
class LogAnalyzer2 {
    
    var isFileValid: Bool = false
    
    func isValidLogFileName(fileName: String) {
        if URL(fileURLWithPath: fileName).pathExtension == "log" {
            isFileValid = true
        }
        isFileValid = false
    }
}
