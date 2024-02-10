//
//  LocationModel.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import Foundation
class LocationModel : Codable{
    
    let name:String?
    let dateTime:String?
    
    enum CodingKeys : String , CodingKey {
        
        case name = "name"
        case dateTime = "localtime"
    }
    
}
