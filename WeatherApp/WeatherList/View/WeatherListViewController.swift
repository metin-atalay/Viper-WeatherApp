//
//  ViewController.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//

import UIKit
import PKHUD

class WeatherListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    var presenter: WeatherListPresenterProtocol?
    var weatherList: [WeatherModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.viewDidLoad(cityName: "istanbul") // Default City
    }
}

extension WeatherListViewController: WeatherListViewProtocol {
    
    func showWeatherInfo(weathers: WeatherModel) {
        weatherList.append(weathers)
        self.tableView.reloadData()
    }
    func showError() {
        HUD.flash(.label("An error occured"), delay: 2.0)
    }
    func showLoading() {
        HUD.show(.progress)
    }
    func hideLoading() {
        HUD.hide()
    }
}

extension WeatherListViewController: UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WheatherTableViewCell
        
        let wather = weatherList[indexPath.row]
        cell.set(forWeather: wather)
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return weatherList.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
}

extension WeatherListViewController: AddWeatherDelegate {
    func addWeatherDidSave(cityName: String) {
        presenter?.viewDidLoad(cityName: cityName)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "AddWheatherCityViewController" {
            
            guard let addWeathercityVC  = segue.destination as?  AddWheatherCityViewController else {
                fatalError("navigation not found")
            }
            
            addWeathercityVC.delegate = self
        }
    }
}
