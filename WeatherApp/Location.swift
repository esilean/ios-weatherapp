//
//  Location.swift
//  WeatherApp
//
//  Created by Leandro Bevilaqua on 11/06/17.
//  Copyright © 2017 Leandro Bevilaqua. All rights reserved.
//

import CoreLocation

class Location {
    static var sharedInstance = Location()
    private init() {}
    
    var latitude: Double!
    var longitude: Double!
    
}
