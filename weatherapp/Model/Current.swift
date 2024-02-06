//
//  Current.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import Foundation
struct Current: Codable {
    let lastUpdatedEpoch: Int
    let lastUpdated: String
    let tempC, tempF, isDay: Int
    let condition: Condition
    let windMph: Double
    let windKph, windDegree: Int
    let windDir: String
    let pressureMB: Int
    let pressureIn: Double
    let precipMm, precipIn, humidity, cloud: Int
    let feelslikeC, feelslikeF, visKM, visMiles: Int
    let uv: Int
    let gustMph, gustKph: Double

    enum CodingKeys: String, CodingKey {
        case lastUpdatedEpoch = "last_updated_epoch"
        case lastUpdated = "last_updated"
        case tempC = "temp_c"
        case tempF = "temp_f"
        case isDay = "is_day"
        case condition
        case windMph = "wind_mph"
        case windKph = "wind_kph"
        case windDegree = "wind_degree"
        case windDir = "wind_dir"
        case pressureMB = "pressure_mb"
        case pressureIn = "pressure_in"
        case precipMm = "precip_mm"
        case precipIn = "precip_in"
        case humidity, cloud
        case feelslikeC = "feelslike_c"
        case feelslikeF = "feelslike_f"
        case visKM = "vis_km"
        case visMiles = "vis_miles"
        case uv
        case gustMph = "gust_mph"
        case gustKph = "gust_kph"
    }
}

// MARK: - Condition
struct Condition: Codable {
    let text: Text
    let icon: Icon
    let code: Int
}

enum Icon: String, Codable {
    case cdnWeatherapiCOMWeather64X64Day113PNG = "//cdn.weatherapi.com/weather/64x64/day/113.png"
    case cdnWeatherapiCOMWeather64X64Day116PNG = "//cdn.weatherapi.com/weather/64x64/day/116.png"
    case cdnWeatherapiCOMWeather64X64Night113PNG = "//cdn.weatherapi.com/weather/64x64/night/113.png"
    case cdnWeatherapiCOMWeather64X64Night116PNG = "//cdn.weatherapi.com/weather/64x64/night/116.png"
}

enum Text: String, Codable {
    case clear = "Clear "
    case partlyCloudy = "Partly cloudy"
    case sunny = "Sunny"
    case textPartlyCloudy = "Partly Cloudy "
}
