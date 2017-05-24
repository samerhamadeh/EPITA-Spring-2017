//
//  ViewController.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 19/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var city_name: UILabel!
    @IBOutlet weak var city_temp: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let weather = WeatherFetch()
        weather.getWeather(city: "Paris")
        
        let weather_stat = Weather(city: "Paris", temperature: 30, picture: nil)
        
        //exlamation is to unwrap safely the value
        print(weather_stat!.city)
        print(weather_stat!.temperature)
        
        city_name.text = weather_stat!.city
        city_temp.text = String(weather_stat!.temperature)
        
//        let jsonParser = JsonParser()
//        jsonParser.jsonParser(cities: data!)

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

//HELLO MY NAME IS SAMER
