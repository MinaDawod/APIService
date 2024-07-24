//
//  RequestParameters.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

 typealias Parameters = [String: Any]

  enum RequestParameters {
    
    case body(_: Parameters)
    case query(_: Parameters)
}


