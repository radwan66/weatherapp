//
//  weatherappApp.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI

@main
struct weatherappApp: App {
    var body: some Scene {
        WindowGroup {
          
            WeatherHomeView(weatherViewModel: ForeCastViewModel(networkHandler: NetworkServices(delegate: URLHandler())))
        }
    }
}
