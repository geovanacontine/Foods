//
//  ItemDetailScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct ItemDetailScreen: View {
    
    @Environment(Model.self) var model
    
    let item: Item
    
    var isAddedToCart: Bool {
        model.cart.contains(item)
    }
    
    var addToCartButtonTitle: String {
        isAddedToCart ? "Added!" : "Add to Cart"
    }
    
    var body: some View {
        List {
            Section {
                Image(item.id)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Section {
                SingleRowView(title: "Calories", value: "\(item.calories) kcal")
                SingleRowView(title: "Price", value: "R$ \(item.price)")
            }
        }
        .navigationTitle(item.name)
        .toolbar {
            ToolbarItem {
                Button(addToCartButtonTitle) {
                    model.addToCart(item)
                }
                .disabled(isAddedToCart)
            }
        }
    }
}

#Preview {
    PreviewContainer {
        ItemDetailScreen(
            item: Item(
                id: "1",
                name: "Item Name",
                calories: 100,
                price: 99.9
            )
        )
    }
}
