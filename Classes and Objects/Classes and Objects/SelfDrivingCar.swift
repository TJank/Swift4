//
//  SelfDrivingCar.swift
//  Classes and Objects
//
//  Created by Jankowski on 7/1/18.
//  Copyright © 2018 Jankowski. All rights reserved.
//

import Foundation

class SelfDrivingCar : Car {
    
    var destination : String?
    
    override func drive() {
        super.drive()
        
        if let userSetDestination = destination {
            print("driving towards " + userSetDestination)
        }
        
    }
    
}
