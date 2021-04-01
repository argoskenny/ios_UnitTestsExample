//
//  LogAnalyzer1.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/1.
//

import Foundation

// 測試回傳值
class LogAnalyzer1 {
    
    func isValidLogFileName(fileName: String) -> Bool {
        if URL(fileURLWithPath: fileName).pathExtension == "log" {
            return true
        }
        return false
    }
}
