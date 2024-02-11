//
//  WeatherGridItem.swift
//  weatherapp
//
//  Created by Ibrahim on 06/02/2024.
//

import SwiftUI

struct WeatherGridItem: View {
    
    let title:String
    let subTitle:String
    var body: some View {
            VStack{
                
                Text("\(title)")
                    .font(.system(size: 13, weight: .regular))
                    .foregroundColor(ColorChecker.getTextColor())
                    .padding(.bottom,10)
            
                Text("\(subTitle)")
                    .font(.system(size: 30, weight: .semibold))
                    .foregroundColor(ColorChecker.getTextColor())
            }
        }
    }





#Preview {
    WeatherGridItem(title: "Visibility", subTitle: "20 Km")
}
