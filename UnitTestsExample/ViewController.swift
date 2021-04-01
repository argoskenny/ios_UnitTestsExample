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
        print(logAnalyzer1.isValidLogFileName(fileName: "abc.log"))
    }
}

