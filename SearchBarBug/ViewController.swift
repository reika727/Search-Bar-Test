//
//  ViewController.swift
//  SearchBarBug
//
//  Created by rei.kasuya on 2026/03/26.
//

import UIKit

class ViewController: UISplitViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        self.preferredDisplayMode = .oneBesideSecondary

        self.viewControllers = [
            UINavigationController(rootViewController: TableViewController())
        ]
    }
}

class TableViewController: UITableViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.searchController = UISearchController(searchResultsController: nil)
    }

    override func tableView(_: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "\(indexPath.row)"
        return cell
    }

    override func tableView(_: UITableView, numberOfRowsInSection _: Int) -> Int {
        3
    }
}
