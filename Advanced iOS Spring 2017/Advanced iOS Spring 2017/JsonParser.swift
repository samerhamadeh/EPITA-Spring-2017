//
//  JsonParser.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 5/10/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation


class JsonParser {
    
    func jsonParser(cities: Data?){

        do {
            if let data = cities,
            let json = try JSONSerialization.jsonObject(with: data) as? [String: Any],
            let cityName = json["name"] as? String{
                print(cityName)
            }
        } catch {
            print("Error parsing JSON: \(error)")
        }
    }
}

