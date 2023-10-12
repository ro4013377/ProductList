//
//  ProductDetailView.swift
//  Assignment_Wipro
//
//  Created by Rohit Agrawal on 12/10/23.
//

import SwiftUI

struct ProductDetailView: View {
    var product: Product
    var body: some View {
        VStack(alignment: .center) {
            AsyncImage(url: URL(string: product.thumbnail)) { image in
                image
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
        placeholder: {
            ProgressView()
        }
        .frame(width: 300, height: 300)
            
            VStack(alignment: .leading, spacing: 10) {
                Text(product.title).fontWeight(.semibold)
                Text(product.description)
                Text("Brand - \(product.brand)")                
                Text("Rating - \(product.price)")
                Text("Price - Rs \(product.price)")
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}
