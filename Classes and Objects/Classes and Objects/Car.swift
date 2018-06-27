//
//  Car.swift
//  Classes and Objects
//
//  Created by Jankowski on 6/27/18.
//  Copyright © 2018 Jankowski. All rights reserved.
//

// learn and use what enums are in swift ===== NEW DATA TYPE : ENUMS

import Foundation

// creating enums "enumeration?"
enum CarType {
    case Sedan
    case Coupe
    case Hatchback
}

class Car {
    
    var colour = "Black"
    var numberOfSeats = 5
    // using enum in class
    var typeOfCar : CarType = .Coupe
    
    // designated initializer == MUST SPECIFY THESE ON CREATION
    // init(chosenColour : String) {
    //    colour = chosenColour
    // }
    
    // creates default "Black" car
    init() {
        
    }
    // convenience initializer which allows for creating custom classes while having a defualt
    convenience init (customerChosenColour : String) {
        self.init()
        colour = customerChosenColour
    }
    
    func drive() {
        print("car is moving")
    }
    
    
    
}
