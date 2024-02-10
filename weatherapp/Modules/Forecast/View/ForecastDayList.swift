//
//  ForecastDayList.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import SwiftUI

struct ForecastDayList: View {
    var forecastviewmodel : ForeCastViewModel?
    
    var body: some View {

        ZStack{
            
            ImageChecker.backgroundImage()
                .resizable()
                .frame(
                    width: UIScreen.main.bounds.width,
                    height: UIScreen.main.bounds.height)
                .ignoresSafeArea()
          
            List(forecastviewmodel?.getNumHours() ?? [] ){ item in
                
                ForecastDayRow(hour: forecastviewmodel?.getForecastHour(hour:item) ?? "00:00", imageURL: forecastviewmodel?.getForecastHourURL(hour: item) ?? "/" , tempreture: forecastviewmodel?.getTempreture(hour: item) ?? "0" )
                    .listRowSeparator(.hidden)
                    .listRowBackground(Color
                    .white
                    .opacity(0))
                
            }.scrollContentBackground(.hidden).padding(.all,10)
           
        }
    }
}


#Preview {
    ForecastDayList()
}
