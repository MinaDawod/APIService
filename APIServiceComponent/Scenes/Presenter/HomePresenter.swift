//
//  HomePresenter.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import Foundation

protocol HomePresenterDelegate: AnyObject {
    func didUpdateWeather(cityName: String, temperature: String)
    func didFailWithError(error: APIError)
}

class HomePresenter {
    
    weak var delegate: HomePresenterDelegate?
    private let apiService = APIService.shared
    
    func fetchWeather(for city: String) {
        let urlRequest = URLBuilder()
            .setMethod(using: .get)
            .setParameters(using: .query([
                "q": city,
                "appid": NetworkConstants.APIKey,
                "units": "metric"
            ]))
            .build()
        
        let task = apiService.request(using: urlRequest) { (result: APIResponse<DataModel>) in
            DispatchQueue.main.async {
                switch result {
                case .success(let weatherResponse):
                    let temperature = "\(weatherResponse.main.temp)°C"
                    self.delegate?.didUpdateWeather(cityName: weatherResponse.name, temperature: temperature)
                case .error(let error):
                    self.delegate?.didFailWithError(error: error)
                }
            }
        }
        
        task.resume()  // Start the network task
    }
}
