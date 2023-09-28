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
    
    static func configure(_ cell: UITableViewCell, with feedback: Feedback) {
        cell.textLabel?.text = feedback.toString()
        cell.detailTextLabel?.text = "Review: \(feedback.text) \nRating: \(feedback.mark.description)★"
    }
}
