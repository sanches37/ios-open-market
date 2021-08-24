//
//  MockURLSession.swift
//  OpenMarket
//
//  Created by Theo on 2021/08/19.
//

import Foundation

class MockURLSession: URLSessionProtocol, Equatable {
    static func == (lhs: MockURLSession, rhs: MockURLSession) -> Bool {
        return true
    }
    
    var isRequestSuccess = false
    var makedDataTask = MockURLSessionDataTask()
    
    func createSampleData() -> Data? {
        let sampleJsonData = Bundle.main.path(forResource: "items", ofType: "json")
        let sampleData = sampleJsonData?.data(using: .utf8)
        return sampleData
    }
   
    func dataTask(with url: URL, completionHandler: @escaping (Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        
        let successResponse = HTTPURLResponse(url: url, statusCode: 200, httpVersion: "2", headerFields: nil)
        let failureResponse = HTTPURLResponse(url: url, statusCode: 503, httpVersion: "2", headerFields: nil)
        let sampleData = createSampleData()
        if isRequestSuccess {
            makedDataTask.resumeDidcall = { completionHandler(sampleData, successResponse, nil) }
        } else {
            makedDataTask.resumeDidcall = { completionHandler(nil, failureResponse, APIError.emptyData) }
        }
        return makedDataTask
    }
    
}
