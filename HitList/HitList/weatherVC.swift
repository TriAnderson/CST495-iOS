//
//  weatherVC.swift
//  HitList
//
//  Created by Tristan Anderson on 12/30/17.
//  Copyright © 2017 trianderson. All rights reserved.
//

import UIKit

class weatherVC: UIViewController {
    
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var tempLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    @IBOutlet weak var weatherLabel: UILabel!
    
    @IBOutlet weak var locSearch: UITextField!
    
    var weather = dataModel()

    
    
    override func viewDidLoad() {
        
        
        weather.downloadData{
            self.updateUI()
        }
        
        super.viewDidLoad()
        
    }
    
    
    func updateUI() {
        
        
        dateLabel.text = weather.date
        tempLabel.text = "\(weather.temp)"
        locationLabel.text = weather.location
        weatherLabel.text = weather.weather
    }
}
