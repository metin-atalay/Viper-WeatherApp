//
//  WheatherTableViewCell.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import Foundation
import UIKit

class WheatherTableViewCell: UITableViewCell {
    
    @IBOutlet weak var cityNameLabel: UILabel!
    @IBOutlet weak var temperature: UILabel!
    
    func set(forWeather weatherResponse: WeatherModel) {
        cityNameLabel.text = weatherResponse.name
        temperature.text = weatherResponse.main?.temp?.formatAsDegree()
    }
}
