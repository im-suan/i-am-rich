//
//  WeatherData.swift
//  clima
//
//  Created by Nguyen Xuan on 1/26/20.
//  Copyright © 2020 Nguyen Xuan. All rights reserved.
//

import Foundation

struct WeatherData: Decodable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Decodable {
    let temp: Double
}


struct Weather: Decodable {
    let description: String
    let id: Int
}
