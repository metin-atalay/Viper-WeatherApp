//
//  Extensions.swift
//  WeatherApp
//
//  Created by Metin Atalay on 20.03.2022.
//

import Foundation

extension String {
    func escaped() -> String {
        return self.addingPercentEncoding(withAllowedCharacters: .urlHostAllowed) ?? self
    }
}

extension Double {
    func formatAsDegree() -> String {
        return String(format: "%.0f°",self)
    }
}
