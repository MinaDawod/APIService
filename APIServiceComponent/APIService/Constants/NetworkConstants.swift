//
//  NetworkConstants.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

enum NetworkConstants {
    
    static let baseURL: String = "https://api.openweathermap.org/data/2.5/weather"
    static let APIKey: String = "1382376d359db00f49b8d63d0c79d854"
    static let timeoutIntervalForRequest: Double = 120
    static let serviceQueue: String = "APIService.serviceQueue"
}
