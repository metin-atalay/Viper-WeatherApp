/* 
Copyright (c) 2022 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
import ObjectMapper

struct WeatherModel : Mappable {
	var coord : Coord?
	var weather : [Weather]?
	var base : String?
	var main : Main?
	var visibility : Int?
	var wind : Wind?
	var clouds : Clouds?
	var dt : Int?
	var sys : Sys?
	var timezone : Int?
	var id : Int?
	var name : String?
	var cod : Int?

	init?(map: Map) {

	}

	mutating func mapping(map: Map) {

		coord <- map["coord"]
		weather <- map["weather"]
		base <- map["base"]
		main <- map["main"]
		visibility <- map["visibility"]
		wind <- map["wind"]
		clouds <- map["clouds"]
		dt <- map["dt"]
		sys <- map["sys"]
		timezone <- map["timezone"]
		id <- map["id"]
		name <- map["name"]
		cod <- map["cod"]
	}

}
