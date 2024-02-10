//
//  ForecastDayModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class ForecastDayModel : Codable,Identifiable{
    
    let date:String?
    let day:DayModel?
    let hours:[HourModel]?
    
    enum CodingKeys : String ,CodingKey {
        
        case date = "date"
        case day = "day"
        case hours = "hour"
    }
    
}
