//
//  TblViewControllerTripInfo.swift
//  SIT206-212230237-Pracs6+
//
//  Created by Alexander Fotheringham on 1/5/17.
//  Copyright © 2017 Alexander Fotheringham. All rights reserved.
//

import UIKit

class TblViewControllerTripInfo: UITableViewController {
    
    var trip : Trip?
    
    @IBOutlet weak var tripDate: UITextField!
    
    @IBOutlet weak var tripDuration: UITextField!

    @IBOutlet weak var tripLocation: UITextField!

    @IBAction func saveTripInfo(_ sender: UIButton) {
        trip!.tripDate = Utilities.dateFormatter.date(from: tripDate.text!)!
        trip!.tripDuration = Int(tripDuration.text!)!
        trip!.tripDestination = tripLocation.text!
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        if trip != nil {
            tripDate.text = Utilities.dateFormatter.string(for: trip!.tripDate)
            tripDuration.text = "\(trip!.tripDuration)"
            tripLocation.text = trip!.tripDestination
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
