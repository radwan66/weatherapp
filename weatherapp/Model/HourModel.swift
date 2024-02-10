//
//  HourModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class HourModel : Codable,Identifiable{
    
      let time: String?
      let tempC: Double?
      let isDay: Int?
      let condition: ConditionModel?

      enum CodingKeys: String, CodingKey{
          case time = "time"
          case tempC = "temp_c"
          case isDay = "is_day"
          case condition = "condition"
      }
    
}
