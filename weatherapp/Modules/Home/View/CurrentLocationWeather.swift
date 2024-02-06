//
//  CurrentLocationWeather.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI

struct CurrentLocationWeather: View {
    var body: some View {
        VStack{
            Text("Cairo")
                .font(.system(size: 20, weight: .bold))
            Text("21")
                .font(.system(size: 50, weight: .regular))
            Text("PartlyCloudy")
                .font(.system(size: 20, weight: .regular))
            HStack{
                
                Text("H : 27")
                    .font(.system(size: 20, weight: .regular))
                
                Text("L : 15")
                    .font(.system(size: 20, weight: .regular))
            }
            Image("cloudy").resizable().frame(width: 80,height: 80)
        }
    }
}

#Preview {
    CurrentLocationWeather()
}
