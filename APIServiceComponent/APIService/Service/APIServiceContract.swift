//
//  APIServiceContract.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

protocol APIServiceContract 
{
    func request<Entity: Codable>(
        using request: URLRequest,
        completionHandler: @escaping(_ result: APIResponse<Entity>) -> Void
    ) -> URLSessionTask
}


