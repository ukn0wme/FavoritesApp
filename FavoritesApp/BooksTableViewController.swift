//
//  BooksTableViewController.swift
//  FavoritesApp
//
//  Created by Daniyal Nurgazinov on 15.11.2024.
//

import UIKit

class BooksTableViewController: UITableViewController {

    // Sample data array for dystopian books
    let books = [
        "1984 by George Orwell",
        "Brave New World by Aldous Huxley",
        "Fahrenheit 451 by Ray Bradbury",
        "The Handmaid's Tale by Margaret Atwood",
        "The Road by Cormac McCarthy",
        "A Clockwork Orange by Anthony Burgess",
        "The Hunger Games by Suzanne Collins",
        "The Giver by Lois Lowry",
        "Divergent by Veronica Roth",
        "We by Yevgeny Zamyatin"
    ]

    // MARK: - Table view data source methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return books.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell using the identifier "ItemCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        // Configure the cell with data
        cell.textLabel?.text = books[indexPath.row]
        cell.detailTextLabel?.text = "A dystopian novel" // Optional subtitle

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            performSegue(withIdentifier: "BooksDetailSegue", sender: self)
        }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "BooksDetailSegue" {
            if let detailVC = segue.destination as? DetailViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                detailVC.itemTitle = books[indexPath.row]
                detailVC.itemSubtitle = "A dystopian novel" // Additional detail
            }
        }
    }

}

