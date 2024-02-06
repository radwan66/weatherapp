//
//  ForecastList.swift
//  weatherapp
//
//  Created by Ibrahim on 06/02/2024.
//

import SwiftUI

struct ForecastList: View {
    var body: some View {
        
            List{
                
                ForecastRow(day: "today", imageName: "cloudy", highestTempreture: "18.5", lowestTempreture: "7.5")
                .listRowSeparator(.hidden)
                .frame(height:40)
                .listRowBackground(Color
                    .white
                    .opacity(0))
            
                ForecastRow(day: "today", imageName: "cloudy", highestTempreture: "18.5", lowestTempreture: "7.5")
                .listRowSeparator(.hidden)
                .frame(height:40)
                .listRowBackground(Color
                    .white
                    .opacity(0))
            
                ForecastRow(day: "today", imageName: "cloudy", highestTempreture: "18.5", lowestTempreture: "7.5")
                .listRowSeparator(.hidden)
                .frame(height:40)
                .listRowBackground(Color
                    .white
                    .opacity(0))
            
        }.scrollContentBackground(.hidden)
                .scrollDisabled(true)
        
        
    }
}


#Preview {
    ForecastList()
}
