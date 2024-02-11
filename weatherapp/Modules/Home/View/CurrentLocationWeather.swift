//
//  CurrentLocationWeather.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI

struct CurrentLocationWeather: View {
    var weatherViewModel : ForeCastViewModel?
    var body: some View {
        VStack{
            Text(weatherViewModel?.getCity() ?? "0")
                .font(.system(size: 20, weight: .bold))
                .foregroundColor(ColorChecker.getTextColor())
            
            Text(weatherViewModel?.getTemp() ?? "0")
                .font(.system(size: 50, weight: .regular))
                .foregroundColor(ColorChecker.getTextColor())
            
            Text(weatherViewModel?.getchecking() ?? "no data")
                .font(.system(size: 20, weight: .regular))
                .foregroundColor(ColorChecker.getTextColor())
            
            HStack{
                
                Text("H :" + (weatherViewModel?.getHighTemp() ?? "0"))
                     .foregroundColor(ColorChecker.getTextColor())
                
                Text("L : " + (weatherViewModel?.getLowTemp() ?? "0"))
                    .font(.system(size: 20, weight: .regular))
                    .foregroundColor(ColorChecker.getTextColor())
            }
            
            AsyncImage(url: URL(string:weatherViewModel?.getImage() ?? "/")) { item in
                
                item.image?.resizable().frame(width: 70,height: 70).scaleEffect(2)
            
            }


        }
       
        

    }
}


#Preview {
    CurrentLocationWeather()
}
