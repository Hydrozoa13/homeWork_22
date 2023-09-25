//
//  AllReviewsTVC.swift
//  String Catalog
//
//  Created by Евгений Лойко on 25.09.23.
//

import UIKit

class AllReviewsTVC: UITableViewController {

    var index: Int!
    var strings: ViolinString {
        StringsData.shared.strings[index]
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        strings.feedBacks.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let feedBack = strings.feedBacks[indexPath.row]
        CellConfigurator.configure(cell, with: feedBack)
        return cell
    }
}
