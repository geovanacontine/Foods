//
//  ItemDetailScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct ItemDetailScreen: View {
    
    @EnvironmentObject var cart: Cart
    @ObservedObject var viewModel: ItemDetailViewModel
    
    init(item: Item) {
        viewModel = ItemDetailViewModel(item: item)
    }
    
    var body: some View {
        List {
            Section {
                Image(viewModel.item.id)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Section {
                SingleRowView(title: "Calories", value: "\(viewModel.item.calories) kcal")
                SingleRowView(title: "Price", value: "R$ \(viewModel.item.price)")
            }
        }
        .navigationTitle(viewModel.item.name)
        .toolbar {
            ToolbarItem {
                Button(viewModel.addToCartButtonTitle) {
                    viewModel.addToCart()
                }
                .disabled(viewModel.isAddedToCart)
            }
        }
        .task {
            viewModel.setupDependencies(cart: cart)
            viewModel.loadData()
        }
    }
}
