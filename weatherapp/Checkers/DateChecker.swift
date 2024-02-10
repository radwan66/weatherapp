//
//  DateChecker.swift
//  weatherapp
//
//  Created by Ibrahim on 10/02/2024.
//

import Foundation
class DateChecker{
    
    static func checkNight()-> Bool{
        
        let hour:Int = DateChecker().getCurrentHour()
        
        if hour >= 5 && hour < 18
        {
            return false
        }else{
            return true
        }
    }
    
    private func getCurrentHour()->Int {
        
       let hour = Calendar.current.component(.hour, from: Date())
        return hour
    }
    
    static func HoursAfterNow(stringDate:String)->Bool
    {
        
        let date =  DateChecker()
            .changeData(
                stringDate: stringDate,
                strDateFormat:"yyyy-MM-dd HH:mm")
        
        let hour = Calendar.current.component(.hour, from:date)
        let nowHour = Calendar.current.component(.hour, from:Date())
        
        if(hour >= nowHour){
            return true
        }else{
            return false
        }
    }
    
    static func getHourDate(stringDate:String)->String {
        
        var HourNow = Calendar.current.component(.hour, from:Date())
        
        let date =  DateChecker()
            .changeData(
                stringDate: stringDate,
                strDateFormat:"yyyy-MM-dd HH:mm")
        
        var hour = Calendar.current.component(.hour, from:date)
        var hourString = String(hour)
        
        if hour == 12{
            hourString = hourString + " " + "PM"
        }else if hour == 0{
            hourString = "12 " + "AM"
        }
        else if hour > 12 {
            hourString = String(hour - 12 ) + " " + "PM"
        }else{
            hourString = hourString + " " + "AM"
        }
        
        if HourNow == hour {
            
            let dayName = DateChecker().getDateDayNameWithFormat(stringDate: stringDate, format: "yyyy-MM-dd HH:mm")
   
            if dayName == "Today"{
                hourString = "Now "
            }
        }
        return hourString
    }
    
    private func getDateDayNameWithFormat(stringDate:String,format:String)-> String{
        
        let date = DateChecker()
            .changeData(
                stringDate: stringDate,
                strDateFormat:format)

        let newDateFormatter = DateFormatter()
        newDateFormatter.dateFormat = "EEEE"
        var day = newDateFormatter.string(from: date )
        let todayName = newDateFormatter.string(from: Date())

        if todayName == day{
            day = "Today"
        }else{
            day = String(day.prefix(3))
        }

        return day

    }
    
        static func getDayByName(stringDate:String)-> String{
        
        let date = DateChecker()
            .changeData(
                stringDate: stringDate,
                strDateFormat:"yyyy'-'MM'-'dd")

        let newDate = DateFormatter()
        newDate.dateFormat = "EEEE"
        var dayInWeek = newDate.string(from: date )
        let todayName = newDate.string(from: Date())

        if todayName == dayInWeek{
            dayInWeek = "Today"
        }else{
            dayInWeek = String(dayInWeek.prefix(3))
        }

        return dayInWeek

    }

    private func changeData(stringDate:String,strDateFormat:String)->Date{
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = strDateFormat
        return dateFormatter.date(from:stringDate) ?? Date()
    }
    
}

enum KindDay{
    case day
    case night
}
