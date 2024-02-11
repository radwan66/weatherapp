//
//  WeatherGrid.swift
//  weatherapp
//
//  Created by Ibrahim on 06/02/2024.
//

import SwiftUI

struct WeatherGrid: View {
    
    var weatherViewModel : ForeCastViewModel?

    private let adaptiveColumn = [GridItem(.adaptive(minimum: 150))]
    
        var body: some View {
    
                LazyVGrid(columns: adaptiveColumn, spacing: 50) {
                    
                    WeatherGridItem(title: "VISIBILITY", subTitle: (weatherViewModel?.getVisibility() ?? "0 KM") + " KM")
                    WeatherGridItem(title: "HUMIDITY", subTitle: (weatherViewModel?.getHumidity() ?? "0")+" %")
                    
                    WeatherGridItem(title: "FEELS LIKE", subTitle:weatherViewModel?.getFeelsLike() ?? "0")
                    
                    WeatherGridItem(title: "PRESSURE", subTitle: weatherViewModel?.getPressure() ?? "0")
                }
    }
}

#Preview {
    WeatherGrid()
}
