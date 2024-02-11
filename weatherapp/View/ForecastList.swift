//
//  ForecastList.swift
//  weatherapp
//
//  Created by Ibrahim on 06/02/2024.
//

import SwiftUI

struct ForecastList: View {
    var weatherViewModel : ForeCastViewModel?
        @State private var isActive = false

         var body: some View {
          
             VStack(alignment: .leading, spacing: 0){
                 
                 Text("3-DAY")  .foregroundColor(ColorChecker.getTextColor()).offset(x:32,y:20)
                     .frame(height:5)                .font(.system(size: 15, weight: .regular))

                 
                 List(weatherViewModel?.getForecastDays() ?? []){ item in
                     
                      NavigationLink(destination:ForecastDayList(forecastviewmodel: weatherViewModel),
                           isActive:$isActive
                      )  {
                         
                         ForecastRow(day: weatherViewModel?.getDay(forecastDayModel: item) ?? "no thing"
                                     , imageURL: weatherViewModel?.getForecastURL(forecastDayModel: item) ?? "no thing"
                                     ,lowestTempreture: weatherViewModel?.getLowDay(forecastDayModel: item) ?? "no thing"
                                     ,highestTempreture: weatherViewModel?.getDayHigh(forecastDayModel: item) ?? "no thing")
                          
                     }.listRowSeparator(.hidden)
                         .frame(height:40)
                         .listRowBackground(Color
                             .white
                            .opacity(0)).onTapGesture {
                                
                                weatherViewModel?.setCheckedDay(forecastDayModel: item)
                                
                                isActive.toggle()
                            }
                     
                 }.scrollContentBackground(.hidden)
                     .scrollDisabled(true)
             }

        }
    }

#Preview {
    ForecastList()
}
