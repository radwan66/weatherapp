//
//  WeatherGrid.swift
//  weatherapp
//
//  Created by Ibrahim on 06/02/2024.
//

import SwiftUI

struct WeatherGrid: View {
    
    private let adaptiveColumn = [GridItem(.adaptive(minimum: 150))]
    
        var body: some View {
    
                LazyVGrid(columns: adaptiveColumn, spacing: 50) {
                    
                    WeatherGridItem(title: "VISIBILITY", subTitle: "String")     

                    WeatherGridItem(title: "HUMIDITY", subTitle: "String")
                    WeatherGridItem(title: "FEELS LIKE", subTitle: "String")
                    WeatherGridItem(title: "PRESSURE", subTitle: "String")
                    
                }

            
    }
}

#Preview {
    WeatherGrid()
}
