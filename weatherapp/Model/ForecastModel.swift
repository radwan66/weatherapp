//
//  ForecastModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class ForecastModel : Codable{
    
    let forecastDays : [ForecastDayModel]?
    
    enum CodingKeys : String ,CodingKey {
        case forecastDays = "forecastday"
    }
    
}
