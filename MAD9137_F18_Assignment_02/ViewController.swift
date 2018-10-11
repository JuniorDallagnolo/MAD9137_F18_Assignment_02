//
//  ViewController.swift
//  F18_Assignment_02
//
//  Created by Ernilo Dallagnolo Junior on 2018-10-03.
//  Copyright © 2018 Ernilo Jr. All rights reserved.

import UIKit

class ViewController: UIViewController {
    
    //In the second ViewController add 2 Labels and a TextView object. (3pt.)
    //Connect the Labels and TextView to IBOutlets. (3pt.)
    //Edit the TextView Attributes to turn Editable off, and Phone Number, Link and Address on. (4pt.)
    @IBOutlet weak var evTitle: UILabel!
    @IBOutlet weak var evDesc: UILabel!
    @IBOutlet weak var textView1: UITextView!
    
    // Create an optional Event property in this class to hold the data passed from the tableView. (1pt.)
    //In the viewDidLoad() function, set the title and date labels, and the description textView to the data stored within the optional Event object. (3pt.)
    var selectedEvent: Event? = Event()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd HH:mm"
        let formatteddate = formatter.string(from: selectedEvent!.date!)
        evTitle.text = selectedEvent!.title
        evDesc.text = formatteddate
        textView1.text = selectedEvent!.description
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

