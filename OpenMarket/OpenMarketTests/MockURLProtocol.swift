//
//  MockURLProtocol.swift
//  OpenMarketTests
//
//  Created by steven on 2021/05/24.
//

import Foundation

class MockURLProtocol: URLProtocol {
    
    static var requsetHandler: ((URLRequest) throws -> (Data?, URLResponse?, Error?))?
    
    // URLRequest로 초기화 가능
    override class func canInit(with request: URLRequest) -> Bool {
        return true
    }
    
    override class func canonicalRequest(for request: URLRequest) -> URLRequest {
        return request
    }
    
    override func startLoading() {
        guard let handler = MockURLProtocol.requsetHandler else {
            fatalError("Handler is unavailable.")
        }
        
        do {
            let (data, response, error) = try handler(request)
            
            // 응답 받은 것을 고객에게 보내기!
            if let response = response {
                client?.urlProtocol(self, didReceive: response, cacheStoragePolicy: .notAllowed)
            }
            
            if let data = data {
                client?.urlProtocol(self, didLoad: data)
            }
            
            client?.urlProtocolDidFinishLoading(self)
        } catch {
            client?.urlProtocol(self, didFailWithError: error)
        }
    }
    
    override func stopLoading() {
        
    }
}
