//
//  AddToCartButton.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct AddToCartButton: View {
    
    @Environment(Model.self) var model
    
    let item: Item
    
    var isAddedToCart: Bool {
        model.cart.contains(item)
    }
    
    var addToCartButtonTitle: String {
        isAddedToCart ? "Added!" : "Add to Cart"
    }
    
    var body: some View {
        Button(addToCartButtonTitle) {
            model.addToCart(item)
        }
        .disabled(isAddedToCart)
    }
}
