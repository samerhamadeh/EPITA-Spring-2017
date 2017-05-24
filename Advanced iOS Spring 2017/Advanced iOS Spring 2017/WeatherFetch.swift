//
//  WeatherFetch.swift
//  Advanced iOS Spring 2017
//
//  Created by Suiz Uzcategui on 27/04/2017.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation

class WeatherFetch {
    
    private let openWeatherMapBaseURL = "http://api.openweathermap.org/data/2.5/weather"
    private let openWeatherMapAPIKey = "3a67124719f5f172f6dc837653322565"
    

    func getWeather(city: String) {
        
        // This is a pretty simple networking task, so the shared session will do.
        let session = URLSession.shared
        
        let weatherRequestURL = URL(string: "\(openWeatherMapBaseURL)?q=\(city)&APPID=\(openWeatherMapAPIKey)")!
        
        // The data task retrieves the data.
        let dataTask = session.dataTask(with: weatherRequestURL) {
            (data:Data?, response:URLResponse?, error:Error?) in
            if let error = error {
                // Server has returned an error
                print("Error:\n\(error)")
            }
                
            else {
                // Server has returned data
                print("Raw data:\n\(data!)\n")
                let dataString = String(data: data!, encoding: String.Encoding.utf8)
                print("Human-readable data:\n\(data!)\n")
                
                print("Info:\n\(dataString!)")
                //
                let jsonParser = JsonParser()
                jsonParser.jsonParser(cities: data!)
                
            }
        }
        dataTask.resume()
    }
    
    
}
