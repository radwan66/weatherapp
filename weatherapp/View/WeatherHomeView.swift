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
                            width:UIScreen.screenWidth
                            ,height:UIScreen.screenHeight)
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
        
        self.weatherViewModel?.bindData =
        {
            
            self.weatherModel = weatherViewModel?.getWeatherData()
            print(self.weatherModel?.location?.name ?? "without name")
        }
        
        weatherViewModel?.bindWeatherInfo()
    }

}

#Preview {
    WeatherHomeView()
}
extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}
