//
//  TableViewControllerContact.swift
//  ToDoList
//
//  Created by Артём Сальников on 01.07.2024.
//

import UIKit

class TableViewControllerContact: UITableViewController {

    var  arrayPersons = [Person(name: "Рэйчел", surname: "Грин" , imagename: "rachel"),
                         Person(name: "Моника", surname: "Геллер" , imagename: "monica"),
                         Person(name: "Фиби", surname: "Буффе" , imagename: "phoebe"),
                         Person(name: "Джо", surname: "Триббиани" , imagename: "joe"),
                         Person(name: "Чендлер", surname: "Бинг" , imagename: "chandler"),
                         Person(name: "Росс", surname: "Геллер" , imagename: "rosse")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    @IBAction func addPerson(_ sender: Any) {
        arrayPersons.append(Person(name: "new name", surname: "new surname" , imagename: "avatar"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(100) as! UILabel
        label.text = arrayPersons[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(101) as! UILabel
        labelSurname.text = arrayPersons[indexPath.row].surname
        
        let imageview = cell.viewWithTag(102) as! UIImageView
        imageview.image = UIImage(named: arrayPersons[indexPath.row].imagename)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 89
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            arrayPersons.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    

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
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
