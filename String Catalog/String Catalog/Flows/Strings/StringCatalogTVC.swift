//
//  StringCatalogTVC.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import UIKit

class StringCatalogTVC: UITableViewController {
    
    var strings: [ViolinString] {
        StringsData.shared.strings
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        strings.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        let string = strings[indexPath.row]
        CellConfigurator.configure(cell, with: string)
        return cell
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let indexPath = tableView.indexPathForSelectedRow,
              let vc = segue.destination as? DetailsVC
        else { return }
        vc.index = indexPath.row
    }
}
