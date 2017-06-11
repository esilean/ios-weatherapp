//
//  Constants.swift
//  WeatherApp
//
//  Created by Leandro Bevilaqua on 10/06/17.
//  Copyright © 2017 Leandro Bevilaqua. All rights reserved.
//

import Foundation

let BASE_URL: String = "http://api.openweathermap.org/data/2.5/weather?"
let LATITUDE: String = "lat="
let LONGITUDE: String = "&lon="
let APP_ID: String = "&appid="
let API_KEY: String = "5427da4dcc019cfcec66f8643e7c3e44"

typealias DownloadComplete = () -> ()

let CURRENT_WEATHER_URL = "\(BASE_URL)\(LATITUDE)\(Location.sharedInstance.latitude!)\(LONGITUDE)\(Location.sharedInstance.longitude!)\(APP_ID)\(API_KEY)"
let FORECAST_URL = "http://api.openweathermap.org/data/2.5/forecast/daily?lat=\(Location.sharedInstance.latitude!)&lon=\(Location.sharedInstance.longitude!)&cnt=10&appid=\(API_KEY)"

