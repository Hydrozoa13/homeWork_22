//
//  StringsData.swift
//  String Catalog
//
//  Created by Евгений Лойко on 24.09.23.
//

import Foundation

class StringsData {
    static let shared = StringsData()
    
    var strings: [ViolinString]
    
    private init() {
        strings = [ViolinString(name: "Thomastik 135 Dominant", price: 234.90, image: #imageLiteral(resourceName: "dominant.jpg")),
                   ViolinString(name: "Thomastik Infeld Blue", price: 239.00, image: #imageLiteral(resourceName: "infeld.jpg")),
                   ViolinString(name: "Pirastro Chromcor", price: 152.40, image: #imageLiteral(resourceName: "pirastro_chromcor.jpeg")),
                   ViolinString(name: "Pirastro Gold", price: 476.80, image: #imageLiteral(resourceName: "pirastro_gold.jpg")),
                   ViolinString(name: "Pirastro Oliv", price: 201.00, image: #imageLiteral(resourceName: "pirastro_oliv.jpg")),
                   ViolinString(name: "Pirastro Tonica", price: 146.86, image: #imageLiteral(resourceName: "pirastro_tonica.jpg"))]
    }
}
