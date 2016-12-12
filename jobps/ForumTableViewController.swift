//
//  ForumTableViewController.swift
//  jobps
//
//  Created by pramono wang on 12/11/16.
//  Copyright © 2016 fnu. All rights reserved.
//

import UIKit

class ForumTableViewController: UITableViewController {
    
    var companies = [
        
                    Company(maternityLeave: "12 weeks paid(30 days for adoptive parents", opinion: "83%", a_woman: "46%", salary: "$2,000", rating_overall: "4.4"),
                    Company(maternityLeave: "10 weeks paid(20 days for adoptive parents", opinion: "66%", a_woman: "27%", salary: "$5,000", rating_overall: "3.5"),
                    Company(maternityLeave: "6 weeks paid(15 days for adoptive parents", opinion: "71%", a_woman: "30%", salary: "$8,000", rating_overall: "3.8"),
                    Company(maternityLeave: "4 weeks paid(24 days for adoptive parents", opinion: "38%", a_woman: "80%", salary: "$16,000", rating_overall: "4.1"),
                    Company(maternityLeave: "15 weeks paid(45 days for adoptive parents", opinion: "54%", a_woman: "23%", salary: "$12,000", rating_overall: "3.6")

                     ]
    
    
    var infos =
    [
            Info(size: "Sometimes", happy: "65%", busyWork: "Reasonable"),
            Info(size: "Never", happy: "85%", busyWork: "Chill"),
            Info(size: "Sometimes", happy: "75%", busyWork: "Reasonable"),
            Info(size: "Never", happy: "80%", busyWork: "Chill"),
            Info(size: "Most Of The Time", happy: "33%", busyWork: "Super Busy")
            
    
    ]
    
    var companyNames = ["American Assistance", "Student Loans Company", "Media Group", "The Daily Californian", "Yahoo"]
    var companyData = ["100 Employees", "323 Employees", "74 Employees", "92 Employees", "81 Employees"]
    var companyPic = ["as.png", "slc.png", "mg.gif", "dc.png", "y.png"]
    
    var companyName: String = ""
//    var items = ["test1", "test2", "test3"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.separatorColor? = UIColor(red: 255.0/255.0, green: 149.0/255.0, blue: 0.0/255.0, alpha: 1.0)


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

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return companies.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> ForumsTableViewCell {
        
//        let cell:UITableViewCell = self.tableView.dequeueReusableCell(withIdentifier: "forumcell")! as UITableViewCell
        
        let cellIdentifier = "forumcell"
//        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier)
//            ?? UITableViewCell(style: .subtitle, reuseIdentifier: cellIdentifier)

        let cell:ForumsTableViewCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as! ForumsTableViewCell
        
        cell.companyImage.image = UIImage(named: companyPic[indexPath.row])
        cell.companyName.text = companyNames[indexPath.row]
        cell.companyData.text = companyData[indexPath.row]
        cell.companyScore.text = companies[indexPath.row].rating_overall
        
//        cell.companyName.text = companies[indexPath.row].maternityLeave
        
//        cell.textLabel?.text = companies[indexPath.row].maternityLeave

        
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        

        companyName = companyNames[indexPath.row]
        performSegue(withIdentifier: "showdetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if (segue.identifier == "showdetail")
        {
//
            let nc = segue.destination as! UINavigationController
//            
            let vc = nc.viewControllers.first as! DetailViewController
            
            let selectedRow = tableView.indexPathForSelectedRow!.row
            
            
            let indexPathVal: NSIndexPath = tableView.indexPathForSelectedRow! as NSIndexPath
            
            let currentCell = tableView.cellForRow(at: indexPathVal as IndexPath) as! ForumsTableViewCell!;
            
            companyName = (currentCell?.companyName.text)!
            
            
            vc.companyName = companyNames[selectedRow]
            
            vc.company = companies[selectedRow]
            vc.info = infos[selectedRow]
        }
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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
