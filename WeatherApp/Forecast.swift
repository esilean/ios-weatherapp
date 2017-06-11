//
//  ForeCast.swift
//  WeatherApp
//
//  Created by Leandro Bevilaqua on 10/06/17.
//  Copyright © 2017 Leandro Bevilaqua. All rights reserved.
//

import UIKit
import Alamofire

class Forecast {
    
    private var _date: String!
    private var _weatherType: String!
    private var _highTemp: Double!
    private var _lowTemp: Double!
    
    var date: String {
        get {
            if _date == nil {
                _date = ""
            }
            
            return _date
        }
        set {
            _date = newValue
        }
    }
    
    var weatherType: String {
        get {
            if _weatherType == nil {
                _weatherType = ""
            }
            return _weatherType
        }
        set {
            _weatherType = newValue
        }
    }
    
    var highTemp: Double {
        get {
            if _highTemp == nil {
                _highTemp = 0.0
            }
            return _highTemp
        }
        set {
            _highTemp = newValue
        }
    }
    
    var lowTemp: Double {
        get {
            if _lowTemp == nil {
                _lowTemp = 0.0
            }
            return _lowTemp
        }
        set {
            _lowTemp = newValue
        }
    }
    
    init(weatherDict: Dictionary<String, AnyObject>) {
        
        if let temp = weatherDict["temp"] as? Dictionary<String, AnyObject> {
            
            if let min = temp["min"] as? Double {
                let l = min - 273.15
                
                let lMin = Double(round(10 * l/10))
                
                self.lowTemp = lMin
            }
            
            if let max = temp["max"] as? Double {
                let m = max - 273.15
                
                let mMax = Double(round(10 * m/10))
                
                self.highTemp = mMax
            }
        }
        if let weather = weatherDict["weather"] as? [Dictionary<String, AnyObject>] {
            
            if let main = weather[0]["main"] as? String {
                self.weatherType = main
            }
            
        }
        
        if let date = weatherDict["dt"] as? Double {
            
            let unixConvertedDate = Date(timeIntervalSince1970: date)
            let dateFormatter = DateFormatter()
            dateFormatter.dateStyle = .full
            dateFormatter.dateFormat = "EEEE"
            dateFormatter.timeStyle = .none
            
            self.date = unixConvertedDate.dayOfTheWeek()
            
        }
        
    }
    
}

extension Date {
    func dayOfTheWeek() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "EEEE"
        return dateFormatter.string(from: self)
    }
}






