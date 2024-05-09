//
//  ItemDetailScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct ItemDetailScreen: View {
    
    @State var model: ItemDetailViewModel
    
    init(cart: Cart, item: Item) {
        self.model = ItemDetailViewModel(cart: cart, item: item)
    }
    
    var body: some View {
        List {
            Section {
                Image(model.item.id)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
            }
            
            Section {
                SingleRowView(title: "Calories", value: "\(model.item.calories) kcal")
                SingleRowView(title: "Price", value: "R$ \(model.item.price)")
            }
        }
        .navigationTitle(model.item.name)
        .toolbar {
            ToolbarItem {
                Button(model.addToCartButtonTitle) {
                    model.addToCart()
                }
                .disabled(model.isAddedToCart)
            }
        }
    }
}
