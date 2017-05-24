//
//  Weather.swift
//  Advanced iOS Spring 2017
//
//  Created by Emile Hoyek on 5/17/17.
//  Copyright © 2017 ___AdvancediOS___. All rights reserved.
//

import Foundation
import UIKit

class Weather{
    
    var city : String
    var temperature : Int
    var picture : UIImage? // stored property which is a variable .. 
    //the questionmark basically tells the program that
    //this variable is optional .. it can be there or it can be null
    
    //we use "let" for a constant
    
    //we initialize the class
    init?(city : String, temperature : Int, picture : UIImage?){
        self.city = city
        self.temperature = temperature
        self.picture = picture
        if(city.isEmpty){
            return nil
        }
    }
}
