//
//  ProductViewModel.swift
//  Assignment_Wipro
//
//  Created by Rohit Agrawal on 12/10/23.
//

import Foundation

class ProductViewModel: ObservableObject {
    
    @Published var products = [Product]()
    
    @MainActor func getProducts() async {
        guard let url = URL(string: "https://dummyjson.com/products") else {
            return
        }
        guard let (data, _) = try? await URLSession.shared.data(from: url),
              let productResponse = try? JSONDecoder().decode(ProductResponse.self, from: data) else {
            return
        }
        self.products = productResponse.products
    }
}
