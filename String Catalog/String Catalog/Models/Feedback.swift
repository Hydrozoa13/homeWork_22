//
//  Feedback.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import Foundation

struct Feedback {
    let text: String
    let mark: Int
    
    func toString() -> String {
        let dateFormatter = DateFormatter()
        dateFormatter.calendar = Calendar(identifier: .gregorian)
        dateFormatter.dateFormat = "dd.MM.yyyy   HH:mm"
        let toString = dateFormatter.string(from: Date())
        return toString
    }
}
