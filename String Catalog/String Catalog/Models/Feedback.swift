//
//  Feedback.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import Foundation

struct Feedback {
    private let date = Date()
    let text: String
    let mark: Int
    
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "dd.MM.yyyy   HH:mm:ss"
        let toString = dateFormatter.string(from: date)
        return toString
    }
}
