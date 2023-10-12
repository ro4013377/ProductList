//
//  Product.swift
//  Assignment_Wipro
//
//  Created by Rohit Agrawal on 12/10/23.
//

import Foundation

struct ProductResponse: Decodable {
    let products: [Product]
}

struct Product: Decodable, Identifiable {
    var id: Int
    var title: String
    var description: String
    var price: Int
    var rating: Double
    var brand: String
    var thumbnail: String
}
