//
//  AddWheatherCityViewController.swift
//  WeatherApp
//
//  Created by Metin Atalay on 20.03.2022.
//

import Foundation
import UIKit

class AddWheatherCityViewController: UIViewController {
    
    @IBOutlet weak var cityNameLabel: UITextField!
    var delegate: AddWeatherDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func saveAction(_ sender: Any) {
        if let city = cityNameLabel.text {
            self.delegate?.addWeatherDidSave(cityName: city)
            self.dismiss(animated: true, completion: nil)
        }
    }
    
    @IBAction func clsButtonAction(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
}

protocol AddWeatherDelegate {
    func addWeatherDidSave(cityName : String)
}
