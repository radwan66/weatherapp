//
//  DayModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class DayModel : Codable{
    
    let maxtempC,mintempC : Double
    let condition: ConditionModel

    enum CodingKeys: String, CodingKey {
        case maxtempC = "maxtemp_c"
        case mintempC = "mintemp_c"
        case condition = "condition"
       }
}
