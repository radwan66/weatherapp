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
                .font(.system(size: 10, weight: .regular)).padding(.bottom,10).foregroundColor(Color.white)
        
            Text("\(subTitle)")
                .font(.system(size: 20, weight: .semibold)).foregroundColor(Color.white)
        }
    }
}



#Preview {
    WeatherGridItem(title: "Visibility", subTitle: "20 Km")
}
