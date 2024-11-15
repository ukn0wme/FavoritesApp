//
//  FilmsTableViewController.swift
//  FavoritesApp
//
//  Created by Daniyal Nurgazinov on 15.11.2024.
//

import UIKit

class FilmsTableViewController: UITableViewController {

    // Sample data array for Christopher Nolan films
    let films = [
        "Inception",
        "Interstellar",
        "The Dark Knight",
        "Memento",
        "Tenet",
        "Dunkirk",
        "The Prestige",
        "Batman Begins",
        "Insomnia",
        "Following"
    ]

    // MARK: - Table view data source methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return films.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell using the identifier "ItemCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        // Configure the cell with data
        cell.textLabel?.text = films[indexPath.row]
        cell.detailTextLabel?.text = "A film by Christopher Nolan" // Optional subtitle

        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "FilmsDetailSegue", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "FilmsDetailSegue" {
            if let detailVC = segue.destination as? DetailViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                detailVC.itemTitle = films[indexPath.row]
                detailVC.itemSubtitle = "A film by Christopher Nolan" // Additional detail
            }
        }
    }
}

