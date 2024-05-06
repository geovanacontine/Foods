//
//  CartScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI
import PassKit

struct CartScreen: View {
    
    @Environment(Model.self) var model
    
    var totalPrice: Double {
        model.cart.map({ $0.price }).reduce(0, +)
    }
    
    var body: some View {
        List {
            Section("Checkout") {
                SingleRowView(title: "Total", value: "R$ \(totalPrice)")
            }
            
            Section("Items") {
                if model.cart.isEmpty {
                    EmptyCartView()
                } else {
                    ForEach(model.cart) { item in
                        ItemCompactView(item: item)
                    }
                    .onDelete(perform: removeItem)
                }
            }
        }
        .navigationTitle("Cart")
    }
    
    func removeItem(at offsets: IndexSet) {
        let itemsToDelete = offsets.map { model.cart[$0] }
        
        for item in itemsToDelete {
            model.removeFromCart(item)
        }
    }
}

#Preview {
    PreviewContainer {
        CartScreen()
    }
}
