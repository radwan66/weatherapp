//
//  ForecastRow.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI

struct ForecastRow: View {
    let day:String
    let imageName:String
    let highestTempreture:String
    let lowestTempreture:String

    
    var body: some View {
        VStack{
            Divider()
               .frame(minHeight: 1.5)
                  .overlay(Color.black)
            HStack{
                
                Text("\(day)").font(.system(size: 25, weight: .semibold))
                Text("  ")
                Image("\(imageName)").resizable().frame(width: 30,height: 40)
                Text("  ")
                Text("\(lowestTempreture)")
                    .font(.system(size: 25, weight: .semibold))
                Text("-")
                    .font(.system(size: 25, weight: .semibold))
                Text("\(highestTempreture)")
                    .font(.system(size: 25, weight: .semibold))
            }
            
        }
    }
}

#Preview {
    ForecastRow(day: "today", imageName: "cloudy", highestTempreture: "5", lowestTempreture: "21")
}
