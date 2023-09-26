//
//  String.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import UIKit

struct ViolinString {
    let name: String
    let price: Double
    let image: UIImage?
    var defaultRating = "⭐⭐⭐"
    var rating: String {
        var rating = 0.0
        for feedBack in feedBacks {
            rating += Double(feedBack.mark)
        }
        let formatted = String(format: "%.1f", rating / Double(feedBacks.count))
        return "\(formatted)⭐"
    }
    var feedBacks: [Feedback] = []
}
