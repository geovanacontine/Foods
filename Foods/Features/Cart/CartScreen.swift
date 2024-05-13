//
//  CartScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct CartScreen: View {
    
    @EnvironmentObject var cart: Cart
    @StateObject var viewModel = CartViewModel()
    
    var body: some View {
        List {
            Section("Checkout") {
                VStack {
                    SingleRowView(title: "Total", value: "R$ \(viewModel.totalPrice)")
                }
            }
            
            Section("Items") {
                if viewModel.items.isEmpty {
                    EmptyCartView()
                } else {
                    ForEach(viewModel.items) { item in
                        ItemCompactView(item: item)
                    }
                    .onDelete(perform: viewModel.removeItem)
                }
            }
        }
        .navigationTitle("Cart")
        .task {
            viewModel.setupDependencies(cart: cart)
            viewModel.loadItems()
        }
    }
}
