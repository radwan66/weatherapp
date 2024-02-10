//
//  ImageChecker.swift
//  weatherapp
//
//  Created by Ibrahim on 10/02/2024.
//

import Foundation
import SwiftUI

class ImageChecker{
    
    static let imgNight = "Night"
    static let imgMorning = "Morning"
    
    static func backgroundImage()-> Image{

        if DateChecker.checkNight(){
            return Image(ImageChecker.imgNight)
        }else{
            return Image(ImageChecker.imgMorning)
        }
        
    }
}
