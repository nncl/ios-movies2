//
//  MoviesTableViewController.swift
//  MoviesLib
//
//  Created by Usuário Convidado on 08/03/17.
//  Copyright © 2017 EricBrito. All rights reserved.
//

import UIKit

class MoviesTableViewController: UITableViewController {
    
    var dataSource: [(String?, Double?)] = [
        ("E o vento levou", 10.0),
        ("Titanic", 9.6),
        ("Matrix", 10.0),
        ("Homem Aranha", 8.5),
        ("Meu Malvado Favorito", 10.0),
        ("Logan", 9.0),
        ("Shrek", 10.0),
        ("Up: Altas Aventuras", 5.0),
        ("Shrek 2", 7.0),
        
        (nil, 10.0),
        ("Titanic 2", 9.6),
        ("Matrix 2", 10.0),
        ("Homem Aranha 2", 8.5),
        ("Meu Malvado Favorito 2", 10.0),
        ("Logan 2", 9.0),
        ("Shrek 2", 10.0),
        ("Up: Altas Aventuras 2", 5.0),
        ("Shrek 2 2", 7.0),
        ("E o vento levou", nil),
        ("Titanic", 9.6),
        ("Matrix", 10.0),
        ("Homem Aranha", 8.5),
        (nil, 10.0),
        ("Logan", 9.0),
        ("Shrek", 10.0),
        ("Up: Altas Aventuras", 5.0),
        ("Shrek 2", 7.0),
        
        ("E o vento levou 2", 10.0),
        ("Titanic 2", 9.6),
        ("Matrix 2", 10.0),
        ("Homem Aranha 2", 8.5),
        ("Meu Malvado Favorito 2", 10.0),
        ("Logan 2", 9.0),
        ("Shrek 2", 10.0),
        ("Up: Altas Aventuras 2", nil),
        ("Shrek 2 2", nil),
        ("Shrek 300", 10.0),
    ]

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
    // Separation between blocks, like on Settings :)
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    // Number of items
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return dataSource.count
    }

    // Configure the cell with information
    // It's called wherever a cell appears on screen
    // IndexPath has two infos: section and role
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "movieCell", for: indexPath)

        // Let's put info into our cell
        
        if let title = dataSource[indexPath.row].0 {
            cell.textLabel?.text = title
        } else {
            cell.textLabel?.text = "" // CLEAN, OTHERWISE IT WILL GET THE EARLIER INFORMATION
        }
        
        if let rating = dataSource[indexPath.row].1 {
            cell.detailTextLabel?.text = "\(rating)"
        } else {
            cell.detailTextLabel?.text = "" // AS WELL AS HERE
        }

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

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
