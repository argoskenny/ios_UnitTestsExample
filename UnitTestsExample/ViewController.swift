//
//  ViewController.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/1.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        let logAnalyzer1 = LogAnalyzer1()
        _ = logAnalyzer1.isValidLogFileName(fileName: "abc.log")
        
        let logAnalyzer2 = LogAnalyzer2()
        logAnalyzer2.isValidLogFileName(fileName: "abc.log")
        
        let fileExtensionManager: IExtensionManager = FileExtensionManager()
        let logAnalyzerStub2 = LogAnalyzerStub1(extensionManager: fileExtensionManager)
        print(logAnalyzerStub2.isValidFile(fileName: "test"))
    }
}

