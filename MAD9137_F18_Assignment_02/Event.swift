//
//  Event.swift
//  F18_Assignment_01
//
//  Created by Ernilo Dallagnolo Junior on 2018-09-18.
//  Copyright © 2018 Ernilo Jr. All rights reserved.
//

import Foundation

class Event {
    
    // Add an optional String variable called 'title'
    var title: String?
    // Add an optional String variable called 'description'
    var description: String?
    // Add an optional Date variable called 'date'
    var date: Date?
    
    // Copy in the following function into your Event class:
    func setDate(formatedDateString: String){
        let formatting = DateFormatter()
        formatting.dateFormat = "yyyy/MM/dd HH:mm"
        self.date = formatting.date(from: formatedDateString)
    }
    
    //Basic Constructor with no arguments
    init() {
        
    }
    // Create a base init function that takes 2 String parameters called title and description
    // that sets the self.title and self.description in the class
    init(title:String, description:String){
        self.title = title
        self.description = description
    }
    // create a convenience init function that takes 3 String parameters called title, description
    // and dateString. Call the base init to set the self.title and self.description variables,
    // and pass the dateString to the setDate() function to set the Date object.
    convenience init(title: String, description: String, dateString: String) {
        self.init(title: title, description: description)
        self.setDate(formatedDateString: dateString)
    }
    // Create a getInfo function that takes no parameters, and returns a String formatted with the
    // event's title, the event's date.description, and the event's description text.
    func getInfo( )->String{
        return "\(self.title!) \(self.description!)\(date!.description)\n "
    }
    
}
