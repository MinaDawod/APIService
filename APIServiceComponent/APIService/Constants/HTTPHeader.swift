//
//  HTTPHeader.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

public typealias HTTPHeaders = [String: String]

public enum HTTPHeader {
    
    static let contentType = "Content-Type"
    static let authentication = "Authorization"
}
