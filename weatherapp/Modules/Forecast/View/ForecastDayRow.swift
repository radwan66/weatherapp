//
//  ForecastDayRow.swift
//  weatherapp
//
//  Created by radwan on 10/02/2024.
//

import SwiftUI

struct ForecastDayRow: View {
    let hour:String
    let imageURL:String
    let tempreture:String
    
    var body: some View {
        
        HStack{
            
            Text(hour)
                .font(.system(size: 35, weight: .regular))
                .foregroundColor(ColorChecker.getTextColor())
            
            Text("  ")
            AsyncImage(url: URL(string:imageURL)) { item in
                item.image?.resizable().frame(width: 50,height: 65)
            }
            Text("  ")
            Text(tempreture)
                .font(.system(size: 35, weight: .regular))
                .foregroundColor(ColorChecker.getTextColor())
        }
    }
}

#Preview {
    ForecastDayRow(hour:"today", imageURL: "cloudy", tempreture: "20")
}
