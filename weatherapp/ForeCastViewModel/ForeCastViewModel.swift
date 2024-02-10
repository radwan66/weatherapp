//
//  ForeCastViewModel.swift
//  weatherapp
//
//  Created by Ibrahim on 10/02/2024.
//

import Foundation
class ForeCastViewModel{
    
    var bindData : (()->(Void))?
    var HandleConnection : NetworkServicesDelegate
    var choosenDay:ForecastDayModel?
    
    init(networkHandler: NetworkServicesDelegate) {
        self.HandleConnection = networkHandler
    }

    func getWeatherData()-> WeatherModel?{
        return weatherInfo
    }
    
    var weatherInfo: WeatherModel?  {
        
        didSet{
            if let validHander =  bindData {
                validHander()
            }
        }
    }
    
    func bindWeatherInfo(){
        
        HandleConnection.fetchAPI( complitionHandler: { (data:WeatherModel?, error: Error?) in
            if let CameData = data {
                self.weatherInfo = CameData
            }else {
                if let error = error{
                    print(error.localizedDescription)
                }
            }
        })
    }
    
    func getCity() -> String{
        return self.weatherInfo?.location?.name ?? "un known city"
    }
    
    func getTemp()-> String {
        return String(self.weatherInfo?.current?.tempC ?? 0)
    }
    
    func getchecking()->String{
        return self.weatherInfo?.current?.condition?.name ?? "not found"
    }
    
    func getImage()-> String{
        return "https:" + (self.weatherInfo?.current?.condition?.icon ?? "not found")
    }
    
    func getHighTemp()-> String{
        return String(self.weatherInfo?.forecast?.forecastDays?[0].day?.maxtempC ?? 0)
    }
    
    
    func getLowTemp()-> String{
        return String(self.weatherInfo?.forecast?.forecastDays?[0].day?.mintempC ?? 0)
    }
    
    func getVisibility()-> String{
        return String(self.weatherInfo?.current?.visibilityKM ?? 0)
    }
    
    func getHumidity()->String {
        return String(self.weatherInfo?.current?.humidity ?? 0)
    }
    
    func getFeelsLike()->String {
        return String(self.weatherInfo?.current?.feelslikeC ?? 0)
    }
    
    func getPressure()->String {
        return String(self.weatherInfo?.current?.pressureMB ?? 0)
    }
    
    func getForecastDays()->[ForecastDayModel]{
        return self.weatherInfo?.forecast?.forecastDays ?? []
    }
    
    func getDay(forecastDayModel:ForecastDayModel)->String{
        return DateHelper.getDateDayName(stringDate: forecastDayModel.date ?? "0-0-0 0:0:0")
    }
    
    func getDayHigh(forecastDayModel:ForecastDayModel)-> String{
        return String(forecastDayModel.day?.maxtempC ?? 0)
    }
    
    func getLowDay(forecastDayModel:ForecastDayModel)-> String{
        return String(forecastDayModel.day?.mintempC ?? 0)
    }
    
    func getForecastURL(forecastDayModel:ForecastDayModel)-> String{
        return "https:" + (forecastDayModel.day?.condition.icon ?? "/")
    }
    
    func setCheckedDay(forecastDayModel:ForecastDayModel){
        choosenDay = forecastDayModel
    }
    
    func getNumHours()->[HourModel]{
    
        if self.getDay(forecastDayModel: choosenDay!) == "Today"{
            
            let hoursAfterNow = choosenDay?.hours?.filter({
                
                DateHelper.isHourInStringDateAfterNow(stringDate: $0.time ?? "0-0-0 0:0" )
            
            }) ?? []

            return hoursAfterNow

        }
        
        return choosenDay?.hours ?? []
        
    }
    
    func getForecastHour(hour:HourModel) -> String {
        
        return DateHelper.getHourFromDate(stringDate:hour.time ?? "0-0-0 0:0")
    }
    
    func getForecastHourURL(hour:HourModel)->String{
        
        return "https:" + (hour.condition?.icon ?? "/")

    }
    
    func getTempreture(hour:HourModel) -> String{
        
        return String(hour.tempC ?? 0)

    }
    
}
