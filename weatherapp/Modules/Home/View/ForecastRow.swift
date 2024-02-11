//
//  ForecastRow.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI

struct ForecastRow: View {
    let day:String
    let imageURL:String
    let lowestTempreture:String
    let highestTempreture:String

    
    var body: some View {
        VStack{
            Divider()
               .frame(minHeight: 1.5)
                  .overlay(ColorChecker.getTextColor())
       
           HStack{
               
               Text("\(day)")
                   .font(.system(size: 20, weight: .semibold)).frame(width: 60)
                   .foregroundColor(ColorChecker.getTextColor())


               AsyncImage(url: URL(string:imageURL)) { item in
                   
                   item.image?.resizable().frame(width: 30,height: 40)
               
               }
               Text("  ")
               
               Text(lowestTempreture)
                   .font(.system(size: 22, weight: .semibold))
                   .foregroundColor(ColorChecker.getTextColor())

               Text("-")
                   .font(.system(size: 22, weight: .semibold))
                   .foregroundColor(ColorChecker.getTextColor())

               Text(highestTempreture)
                   .font(.system(size: 22, weight: .semibold))
                   .foregroundColor(ColorChecker.getTextColor())



           }

       }
   }
}

#Preview {
    ForecastRow(day: "today", imageURL: "cloudy", lowestTempreture: "5", highestTempreture: "21")
}
