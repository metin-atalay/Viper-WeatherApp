//
//  WeatherModel.swift
//  WeatherApp
//
//  Created by Metin Atalay on 19.03.2022.
//


import Foundation
import ObjectMapper
/*
struct WeatherModel {
   
    var name = ""
    var main : Weather? = nil
}

extension WeatherModel: Mappable {
    
    init?(map: Map) {
    }
    
    mutating func mapping(map: Map) {
        name     <- map["name"]
        main     <- map["main"]
    }
    
}

/*
struct WeatherResponse: Decodable {
    let name: String
    let main : Weather
}*/

struct Weather :Mappable  {
    init?(map: Map) {
        
    }
    
    mutating func mapping(map: Map) {
        temp     <- map["temp"]
        humidity     <- map["humidity"]
    }
    
    var temp: Double = 0
    var humidity: Double = 0
}





import Foundation
import ObjectMapper

struct Main : Mappable {
    var temp : Double?
    var feels_like : Double?
    var temp_min : Double?
    var temp_max : Double?
    var pressure : Int?
    var humidity : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        temp <- map["temp"]
        feels_like <- map["feels_like"]
        temp_min <- map["temp_min"]
        temp_max <- map["temp_max"]
        pressure <- map["pressure"]
        humidity <- map["humidity"]
    }

}



struct WeatherModel : Mappable {
   
    var weather : [Weather]?
    var base : String?
    var main : Main?
    var visibility : Int?
 
    var dt : Int?
 
    var timezone : Int?
    var id : Int?
    var name : String?
    var cod : Int?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

       // coord <- map["coord"]
        weather <- map["weather"]
        base <- map["base"]
        main <- map["main"]
        visibility <- map["visibility"]
      
        dt <- map["dt"]
       
        timezone <- map["timezone"]
        id <- map["id"]
        name <- map["name"]
        cod <- map["cod"]
    }

}

struct Weather : Mappable {
    var id : Int?
    var main : String?
    var description : String?
    var icon : String?

    init?(map: Map) {

    }

    mutating func mapping(map: Map) {

        id <- map["id"]
        main <- map["main"]
        description <- map["description"]
        icon <- map["icon"]
    }

}

 */
