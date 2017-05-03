//
//  Trip.swift
//  SIT206-212230237-Pracs6+
//
//  Created by Alexander Fotheringham on 1/5/17.
//  Copyright © 2017 Alexander Fotheringham. All rights reserved.
//

import Foundation
import UIKit

class Trip {
    var tripDate : Date
    var tripDuration : Int
    var tripDestination : String
    
    init(date : Date, duration : Int, destination: String) {
        
        self.tripDate = date
        self.tripDuration = duration
        self.tripDestination = destination
    }
}

class Utilities {
    static var dateFormatter = DateFormatter()
    static var trips : [Trip] = []
    static func loadTrips() {
        dateFormatter.dateFormat = "yy/mm/dd"
        trips = [
            
            Trip(date: dateFormatter.date(from: "17/04/24")!, duration : 2, destination : "Melbourne"),
            Trip(date: dateFormatter.date(from: "17/05/24")!, duration : 2, destination : "Sydney")
        ]
    }
}
