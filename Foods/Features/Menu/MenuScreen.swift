//
//  MenuScreen.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct MenuScreen: View {
    
    @Environment(Cart.self) var cart
    @State var viewModel = MenuViewModel()
    
    var body: some View {
        List {
            Section {
                ForEach(viewModel.items) { item in
                    NavigationLink(value: item) {
                        ItemCompactView(item: item)
                    }
                }
            }
        }
        .navigationTitle("Menu")
        .navigationDestination(for: Item.self) { item in
            ItemDetailScreen(
                viewModel: ItemDetailViewModel(item: item, cart: cart)
            )
        }
        .task {
            viewModel.loadItems()
        }
    }
}
