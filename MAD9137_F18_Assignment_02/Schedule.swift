//
//  Schedule.swift
//  F18_Assignment_01
//
//  Created by Ernilo Dallagnolo Junior on 2018-09-18.
//  Copyright © 2018 Ernilo Jr. All rights reserved.
//

import Foundation

// Step 3:
// Create the Schedule class in the Schedule.swift file

class Schedule {
    
    // Add a variable called eventArray of type Event array
    var eventArray: [Event] = [ ]
    
    // Add a get-only Int called eventCount, use a guard statement to check if isEmpty
    // is false on the array, else return 0.  If the guard passes return the array's count value.
    var eventCount: Int {
        guard eventArray.isEmpty == false  else { return 0 }
        return eventArray.count
    }
    
    // Create an addNewEvent function that takes in 3 String parameters called title, description
    // and dateString. Append a new Event object to the array using these values within this function.
    func addNewEvent(title: String, description: String, dateString: String){
        let newEvent = Event(title: title, description: description, dateString: dateString)
        eventArray.append(newEvent)
    }
    
    // Create a function called outputAllEvents that takes no arguments, and returns a string.  Use
    // a guard to check if the isEmpty is false on the array, else return an error message.  If the
    // guard passes, then loop through the eventArray array concatenating the String data returned from
    // each event's getInfo function to a new formatted string, and return that string
    func outputAllEvents()->String{
        guard eventArray.isEmpty == false  else { return "Your Have No Events" }
        var eventStringArray: [String] = []
        var eventString: String
        for (event) in eventArray{
            eventStringArray.append(event.getInfo())
        }
        eventString = eventStringArray.joined(separator:"\n")
        return eventString
    }
    
}
