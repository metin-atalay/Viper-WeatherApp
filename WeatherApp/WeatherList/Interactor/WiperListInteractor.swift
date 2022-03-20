//
//  WiperListInteractor.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import Foundation

class WeatherListInteractor: WeatherListInteractorInputProtocol {
    weak var presenter: WeatherListInteractorOutputProtocol?
    var remoteDatamanager: WeatherListRemoteDataManagerInputProtocol?
    
    func retrieveWeatherList(cityName: String) {
        do {
            remoteDatamanager?.retrieveWeatherList(cityName: cityName)
        } catch {
            print(error.localizedDescription)
        }
    }
}

extension WeatherListInteractor: WeatherListRemoteDataManagerOutputProtocol {
    func onWeeatherRetrieved(_ cityInfo: WeatherModel) {
        presenter?.didRetrieveWeather(cityInfo)
    }
    
    func onError() {
        presenter?.onError()
    }
}
