//
//  MusicTableViewController.swift
//  FavoritesApp
//
//  Created by Daniyal Nurgazinov on 15.11.2024.
//

import UIKit

class MusicTableViewController: UITableViewController {

    let music = [
        "Где нас нет",
        "Переплетено",
        "Кто убил Марка?",
        "Безумие",
        "На Люстрах",
        "Судный День",
        "Вечный Жид",
        "Признаки Жизни",
        "Тентакли",
        "Колыбельная"
    ]

    // MARK: - Table view data source methods

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return music.count
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "MusicDetailSegue", sender: self)
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // Dequeue the cell using the identifier "ItemCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
        
        // Configure the cell with data
        cell.textLabel?.text = music[indexPath.row]
        cell.detailTextLabel?.text = "Song by Oxxxymiron" // Optional subtitle

        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "MusicDetailSegue" {
            if let detailVC = segue.destination as? DetailViewController,
               let indexPath = tableView.indexPathForSelectedRow {
                detailVC.itemTitle = music[indexPath.row]
                detailVC.itemSubtitle = "Song by Oxxxymiron" // Additional detail
            }
        }
    }

}
