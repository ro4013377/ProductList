//
//  ProductListView.swift
//  Assignment_Wipro
//
//  Created by Rohit Agrawal on 12/10/23.
//

import SwiftUI

struct ProductListView: View {
    @StateObject var viewModel = ProductViewModel()
        
    var body: some View {
        NavigationView {
            List {
                ForEach(viewModel.products) { product in
                    ProductItemRow(product: product)
                }
            }
            .navigationTitle("Products")
            .task {
                await viewModel.getProducts()
            }
        }
    }
}

struct ProductItemRow: View {
    var product: Product
    var body: some View {
        NavigationLink {
            ProductDetailView(product: product)
        } label: {
            VStack(alignment: .leading) {
                Text(product.title).fontWeight(.semibold)
                Text("Brand - \(product.brand)")
                Text("Rating - \(product.price)")
                Text("Price - Rs \(product.price)")
            }
        }
    }
}





