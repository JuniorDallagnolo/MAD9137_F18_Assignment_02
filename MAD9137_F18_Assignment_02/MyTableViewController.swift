//
//  MyTableViewController.swift
//  F18_Assignment_02
//
//  Created by Ernilo Dallagnolo Junior on 2018-10-03.
//  Copyright © 2018 Ernilo Jr. All rights reserved.


import UIKit

//Create a TableViewController and set it as the initial view of the application. (2pt.)
//Add a new swift file for a custom UITableViewController class. (1pt.)
//Set the custom class for your TableViewController. (1pt.)
//Embed a NavigationController in the TableViewController. (1pt.)
//Connect the Prototype Cell in the TableView to the regular ViewController with a Segue. (1pt.)
class MyTableViewController: UITableViewController {
    
    //    Create a (non-optional) Schedule object to use in your tableViewController class. (1pt.)
    let schedule:Schedule = Schedule()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Add at least 3 default test events to the schedule using the addNewEvent() function. (3pt.)
        schedule.addNewEvent(title: "My wife birthday - I CANNOT FORGET", description: "Seriously buy a present bro", dateString: "2018/06/22 12:00")
        schedule.addNewEvent(title: "Christmas", description: "Yay Santa", dateString: "2018/12/25 10:00")
        schedule.addNewEvent(title: "Steam Summer Sale", description: "MUST GIVE MONEY TO GABES", dateString: "2018/05/26 00:00")
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    //Use the eventArray count in the schedule object to set the number of rows for the table. (1pt.)
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return schedule.eventCount
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        
        //Set each TableViewCell label text to the title of one of the events from the schedule. (2pt.)
        //When the user taps on a cell in the table, the application must pass the corresponding event object to the destination viewController’s Event property. (4pt.)
        let event: Event = schedule.eventArray[indexPath.row]
        
        cell.textLabel?.text = event.title
        
        return cell
    }
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "follow1" {
            let indexPathRow = tableView.indexPathForSelectedRow?.row
            let nextViewController = segue.destination as? ViewController
            nextViewController?.selectedEvent = schedule.eventArray[indexPathRow!]
        }
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    
    
}
