//
//  WeatherListWireFrame.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import Foundation
import UIKit

class WeatherListWireFrame: WeatherListWireFrameProtocol {
    class func createWeatherListModule() -> UIViewController {
        let navController = mainStoryboard.instantiateViewController(withIdentifier: "WeathersNavigationController")
        if let view = navController.childViewControllers.first as? WeatherListViewController {
            let presenter: WeatherListPresenterProtocol & WeatherListInteractorOutputProtocol = WeatherListPresenter()
            let interactor: WeatherListInteractorInputProtocol & WeatherListRemoteDataManagerOutputProtocol = WeatherListInteractor()
            let remoteDataManager: WeatherListRemoteDataManagerInputProtocol = WeatherListRemoteDataManager()
            let wireFrame: WeatherListWireFrameProtocol = WeatherListWireFrame()
            
            view.presenter = presenter
            presenter.view = view
            presenter.wireFrame = wireFrame
            presenter.interactor = interactor
            interactor.presenter = presenter
            
            interactor.remoteDatamanager = remoteDataManager
            remoteDataManager.remoteRequestHandler = interactor
            
            return view
        }
        return UIViewController()
    }
    
    static var mainStoryboard: UIStoryboard {
        return UIStoryboard(name: "Main", bundle: Bundle.main)
    }
}
