//
//  DetailViewController.swift
//  FavoritesApp
//
//  Created by Daniyal Nurgazinov on 15.11.2024.
//

import UIKit

class DetailViewController: UIViewController {
    var itemTitle: String? // Holds the title of the selected item
    var itemSubtitle: String? // Holds additional details

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = itemTitle
        subtitleLabel.text = itemSubtitle
    }
}

