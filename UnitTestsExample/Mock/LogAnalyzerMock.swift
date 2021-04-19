//
//  LogAnalyzerMock.swift
//  UnitTestsExample
//
//  Created by KennyLin on 2021/4/19.
//

import Foundation

class LogAnalyzerMock {
    
    private var webService: IWebService
    
    init(webService: IWebService) {
        self.webService = webService
    }
    
    public func analyze(fileName: String) {
        if fileName.count < 8 {
            webService.logError(message: "FileName too short: \(fileName)")
        }
    }
}

protocol IWebService {
    func logError(message: String)
}

class ErrorLogWebService: IWebService {
    
    func logError(message: String) {
        let parameters: [String : Any] = ["errorLog": message]
        let url = URL(string: "https://api.error.com")!
        
        let session = URLSession.shared
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        do {
            request.httpBody = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
        } catch let error {
            print(error.localizedDescription)
        }
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        request.addValue("application/json", forHTTPHeaderField: "Accept")
        
        let task = session.dataTask(with: request as URLRequest, completionHandler: { data, response, error in
            guard error == nil else {
                return
            }
            
            guard let data = data else {
                return
            }
            
            do {
                if let json = try JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any] {
                    print(json)
                }
            } catch let error {
                print(error.localizedDescription)
            }
        })
        task.resume()
    }
}

class FakeWebService: IWebService {
    
    public var lastError: String = ""
    
    func logError(message: String) {
        lastError = message
    }
}
