//
//  WeatherCell.swift
//  WeatherApp
//
//  Created by Leandro Bevilaqua on 10/06/17.
//  Copyright © 2017 Leandro Bevilaqua. All rights reserved.
//

import UIKit

class WeatherCell: UITableViewCell {

    
    @IBOutlet weak var weatherIcon: UIImageView!
    
    @IBOutlet weak var dayOfWeekLbl: UILabel!
    
    @IBOutlet weak var weatherType: UILabel!
    
    @IBOutlet weak var hightTempLbl: UILabel!
    
    @IBOutlet weak var lowTempLbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()

    }
    
    func updateUI(forecast: Forecast) {
        
        lowTempLbl.text = "\(forecast.lowTemp)°"
        hightTempLbl.text = "\(forecast.highTemp)°"
        weatherType.text = forecast.weatherType
        weatherIcon.image = UIImage(named: forecast.weatherType)
        dayOfWeekLbl.text = forecast.date
    }

}
