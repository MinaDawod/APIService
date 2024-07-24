//
//  HomeViewController.swift
//  APIServiceComponent
//
//  Created by Mina Dawood on 21/07/2024.
//

import UIKit

class HomeViewController: UIViewController, HomePresenterDelegate {
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var CityNameLabel: UILabel!
    @IBOutlet weak var TempratureLabel: UILabel!
    
    private let presenter = HomePresenter()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTextField.delegate = self
        presenter.delegate = self
    }
    
    func didUpdateWeather(cityName: String, temperature: String) {
        CityNameLabel.text = cityName
        TempratureLabel.text = temperature
    }
    
    func didFailWithError(error: APIError) {
        print("Failed to fetch weather data: \(error)")
    }
}

extension HomeViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let cityName = textField.text, !cityName.isEmpty else {
            return false
        }
        presenter.fetchWeather(for: cityName)
        textField.resignFirstResponder()
        return true
    }
}
