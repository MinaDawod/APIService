//
//  APIResponse.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

enum APIResponse<Entity: Decodable> {
    
    case success(Entity)
    case error(APIError)
}


