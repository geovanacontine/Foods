//
//  CartScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct CartScreen: View {
    
    @State var model: CartViewModel
    
    init(cart: Cart) {
        self.model = CartViewModel(cart: cart)
    }
    
    var body: some View {
        List {
            Section("Checkout") {
                VStack {
                    SingleRowView(title: "Total", value: "R$ \(model.totalPrice)")
                }
            }
            
            Section("Items") {
                if model.items.isEmpty {
                    EmptyCartView()
                } else {
                    ForEach(model.items) { item in
                        ItemCompactView(item: item)
                    }
                    .onDelete(perform: model.removeItem)
                }
            }
        }
        .navigationTitle("Cart")
    }
}
