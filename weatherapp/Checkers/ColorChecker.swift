//
//  ColorChecker.swift
//  weatherapp
//
//  Created by Ibrahim on 10/02/2024.
//

import Foundation
import SwiftUI

class ColorChecker{
    
    static func getTextColor()-> Color{
        
        if DateChecker.checkNight() {
            return Color.white
        }else{
           return Color.black
        }
    }
}
