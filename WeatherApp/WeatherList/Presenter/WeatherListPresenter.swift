//
//  WeatherListPresenter.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//


class WeatherListPresenter: WeatherListPresenterProtocol {
    weak var view: WeatherListViewProtocol?
    var interactor: WeatherListInteractorInputProtocol?
    var wireFrame: WeatherListWireFrameProtocol?
    
    func viewDidLoad(cityName: String) {
        view?.showLoading()
        interactor?.retrieveWeatherList(cityName: cityName)
    }
}

extension WeatherListPresenter: WeatherListInteractorOutputProtocol {
    
    func didRetrieveWeather(_ cityInfo: WeatherModel) {
        view?.hideLoading()
        view?.showWeatherInfo(weathers: cityInfo)
    }
    
    func onError() {
        view?.hideLoading()
        view?.showError()
    }
}
