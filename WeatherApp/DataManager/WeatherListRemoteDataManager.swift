//
//  WeatherListRemoteDataManager.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import Foundation
import Alamofire
import AlamofireObjectMapper

class WeatherListRemoteDataManager:WeatherListRemoteDataManagerInputProtocol {
    var remoteRequestHandler: WeatherListRemoteDataManagerOutputProtocol?
    
    func retrieveWeatherList(cityName: String) {
        let weatherURL = "https://api.openweathermap.org/data/2.5/weather?q=\(cityName.escaped())&appid=c963b70b14b723ca61e2e87089359287&units=metric"
        
        Alamofire.request(weatherURL, method: .get
                          , parameters: nil, encoding: URLEncoding.default, headers: nil).responseObject { (response: DataResponse<WeatherModel>) in
            switch response.result {
            case .success(let weather):
                self.remoteRequestHandler?.onWeeatherRetrieved(weather)
                
            case .failure( _):
                self.remoteRequestHandler?.onError()
            }
        }
    }
}
