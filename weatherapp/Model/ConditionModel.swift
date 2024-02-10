//
//  ConditionModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class ConditionModel : Codable{

    let name : String?
    let icon : String?
    
    enum CodingKeys : String , CodingKey {
        case name = "text"
        case icon = "icon"
    }
    
}
