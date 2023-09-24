//
//  CellConfigurator.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import UIKit

class CellConfigurator {
    static func configure(_ cell: UITableViewCell, with string: ViolinString) {
        cell.textLabel?.text = string.name
        cell.detailTextLabel?.text = String(string.price) + " BYN\n" + string.rating
        cell.imageView?.image = string.image
    }
}
