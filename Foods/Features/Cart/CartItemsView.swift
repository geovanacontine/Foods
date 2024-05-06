//
//  CartItemsView.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct CartItemsView: View {
    
    @Environment(Model.self) var model
    
    var body: some View {
        if model.cart.isEmpty {
            EmptyCartView()
        } else {
            ForEach(model.cart) { item in
                ItemCompactView(item: item)
            }
            .onDelete(perform: removeItem)
        }
    }
    
    func removeItem(at offsets: IndexSet) {
        let itemsToDelete = offsets.map { model.cart[$0] }
        
        for item in itemsToDelete {
            model.removeFromCart(item)
        }
    }
}
