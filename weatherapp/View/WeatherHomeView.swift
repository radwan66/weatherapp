//
//  ContentView.swift
//  weatherapp
//
//  Created by radwan on 06/02/2024.
//

import SwiftUI


struct WeatherHomeView: View {
    var weatherViewModel : ForeCastViewModel?
    @State var weatherModel:WeatherModel?
    var body: some View {
        NavigationView{
            
            ZStack{
                
                if weatherModel != nil{
                    
                    ImageChecker.backgroundImage()
                        .resizable()
                        .frame(
                            width:UIScreen.main.bounds.size.width
                            ,height:UIScreen.main.bounds.size.height)
                        .ignoresSafeArea()
                    
                    VStack{
                        
                        CurrentLocationWeather(weatherViewModel: self.weatherViewModel)
                        
                        ForecastList(weatherViewModel: self.weatherViewModel)
                            .frame(width: 310, height:220)
                        
                        WeatherGrid(weatherViewModel: self.weatherViewModel)
                    }
                    
                }else{
                    
                    VStack{
                        ProgressView().tint(.blue).scaleEffect(2)
                        Text(" ").frame(height:60)
                        Text(" waiting")
                    }
                }
                
                
            }.onAppear {
                LoadingViewModel()
            }
            
            
            
        }
    }
    
    func LoadingViewModel(){
       print ("in loading func /////////////")
        self.weatherViewModel?.bindData =
        {
         print ("in bind data ///////////////")
            self.weatherModel = weatherViewModel?.getWeatherData()
            print(self.weatherModel?.location?.name ?? "without name")
        }
        
        self.weatherViewModel?.bindWeatherInfo()
    }

}

#Preview {
    WeatherHomeView()
}
