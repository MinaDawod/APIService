//
//  APIBuilder.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

public class URLBuilder {
    // MARK: - PRIVATE PROPERTIES
    //
    private(set) var urlRequest: URLRequest
    
    // MARK: - INIT
    //
    public init() {
        guard let url = URL(string: NetworkConstants.baseURL) else {
            fatalError("Could not create URL: \(NetworkConstants.baseURL)")
        }
        self.urlRequest = URLRequest(url: url)
    }
    
    // MARK: - BUILDER METHODS
    //
    @discardableResult
    public func setHost(using host: String) -> URLBuilder {
        self.urlRequest.url = URL(string: host)
        return self
    }
    
    @discardableResult
    public func setPath(using path: APIEndPoints) -> URLBuilder {
        self.urlRequest.url = self.urlRequest.url?.appendingPathComponent(path.rawValue)
        return self
    }
    
    @discardableResult
    public func setMethod(using method: HTTPMethod) -> URLBuilder {
        self.urlRequest.httpMethod = method.rawValue
        return self
    }
    
    @discardableResult
    public func setHeaders(using headers: HTTPHeaders) -> URLBuilder {
        for (key, value) in headers {
            self.urlRequest.addValue(value, forHTTPHeaderField: key)
        }
        return self
    }
    
    @discardableResult
    func setParameters(using parameters: RequestParameters) -> URLBuilder {
        switch parameters {
        case .body(let params):
            do {
                self.urlRequest.httpBody = try JSONSerialization.data(withJSONObject: params, options: [])
            } catch {
                fatalError("Could not serialize \(params)")
            }
            
        case .query(let params):
            let queryParams = params.map { URLQueryItem(name: $0.key, value: "\($0.value)") }
            
            if let url = self.urlRequest.url {
                var components = URLComponents(string: url.absoluteString)
                components?.queryItems = queryParams
                
                self.urlRequest.url = components?.url
            }
        }
        
        return self
    }
    
    public func build() -> URLRequest {
        guard let url = self.urlRequest.url, !url.pathComponents.isEmpty else {
            fatalError("API should contain at least one path.")
        }
        return self.urlRequest
    }
}
