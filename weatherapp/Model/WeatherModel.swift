//
//  WeatherModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class WeatherModel : Codable{
    
    let location:LocationModel?
    let current:CurrentModel?
    let forecast:ForecastModel?
    
    enum CodingKeys : String , CodingKey {
    
        case location = "location"
        case current = "current"
        case forecast = "forecast"
        
    }
    
    
}

