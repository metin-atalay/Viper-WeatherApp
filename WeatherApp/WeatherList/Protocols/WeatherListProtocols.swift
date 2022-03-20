//
//  WeatherListProtocols.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import Foundation
import UIKit

protocol WeatherListViewProtocol: class {
    var presenter: WeatherListPresenterProtocol? { get set }
    
    // PRESENTER -> VIEW
    func showWeatherInfo(weathers: WeatherModel)
    
    func showError()
    
    func showLoading()
    
    func hideLoading()
}

protocol WeeatherListWireFrameProtocol: class {
    static func createWeatherListModule() -> UIViewController
}

protocol WeatherListPresenterProtocol: class {
    var view: WeatherListViewProtocol? { get set }
    var interactor: WeatherListInteractorInputProtocol? { get set }
    var wireFrame: WeatherListWireFrameProtocol? { get set }
    
    // VIEW -> PRESENTER
    func viewDidLoad( cityName: String)
}


protocol WeatherListWireFrameProtocol: class {
    static func createWeatherListModule() -> UIViewController
}

protocol WeatherListInteractorOutputProtocol: class {
    // INTERACTOR -> PRESENTER
    func didRetrieveWeather(_ weatherInfo: WeatherModel)
    func onError()
}

protocol WeatherListInteractorInputProtocol: class {
    var presenter: WeatherListInteractorOutputProtocol? { get set }
    var remoteDatamanager: WeatherListRemoteDataManagerInputProtocol? { get set }
    
    // PRESENTER -> INTERACTOR
    func retrieveWeatherList(cityName: String)
}

protocol WeatherListRemoteDataManagerInputProtocol: class {
    var remoteRequestHandler: WeatherListRemoteDataManagerOutputProtocol? { get set }
    
    // INTERACTOR -> REMOTEDATAMANAGER
    func retrieveWeatherList(cityName: String)
}


protocol WeatherListRemoteDataManagerOutputProtocol: class {
    // REMOTEDATAMANAGER -> INTERACTOR
    func onWeeatherRetrieved(_ cityInfo: WeatherModel)
    func onError()
}
