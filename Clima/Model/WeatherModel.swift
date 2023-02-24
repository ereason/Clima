//
//  WeatherModel.swift
//  Clima
//
//  Created by George on 25.02.2023.
//

import Foundation

struct WeatherModel {
    
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        return String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...232:
            return "loud.bolt.circle"
        case 300...321:
            return "cloud.drizzle.circle"
        case 500...531:
            return "cloud.rain.fill"
        case 600...622:
            return "cloud.snow.circle.fill"
        case 701...781:
            return "cloud.fog.circle.fill"
        case 800:
            return "sun.max.circle.fill"
        case 801...804:
            return "cloud.bolt.fill"
        default:
            return "cloud.circle"
        }
    }
    
}
