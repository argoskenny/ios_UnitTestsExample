//
//  ExtentionManager.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/15.
//

import Foundation

protocol IExtensionManager {
    func isValid(fileName: String) -> Bool
}

class FileExtensionManager: IExtensionManager {
    
    func isValid(fileName: String) -> Bool {
        if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let jsonResult = try JSONSerialization.jsonObject(with: data, options: .mutableLeaves)
                if let jsonResult = jsonResult as? Dictionary<String, AnyObject>, let number = jsonResult["number"] as? Int, number == 123 {
                    return true
                }
            } catch {
                print("fail")
            }
        }
        return false
    }
}

class AlwaysValidFakeExtensionManager: IExtensionManager {
    
    func isValid(fileName: String) -> Bool {
        return false
    }
}
