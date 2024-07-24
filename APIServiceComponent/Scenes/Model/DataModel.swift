//
//  DataModel.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

struct DataModel: Codable {
    
    let name: String
    let main: Main
    
    struct Main: Codable {
        let temp: Double
    }
}
