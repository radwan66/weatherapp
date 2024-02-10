//
//  CurrentModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class CurrentModel : Codable {
    
    let lastUpdated: String?
    let tempC: Int?
    let isDay: Int?
    let condition: ConditionModel?
    let pressureMB: Int?
    let humidity: Int?
    let feelslikeC: Double?
    let visibilityKM: Double?
    
    enum CodingKeys: String, CodingKey {
            case lastUpdated = "last_updated"
            case tempC = "temp_c"
            case isDay = "is_day"
            case condition = "condition"
            case pressureMB = "pressure_mb"
            case humidity = "humidity"
            case feelslikeC = "feelslike_c"
            case visibilityKM = "vis_km"
        }
    
}
