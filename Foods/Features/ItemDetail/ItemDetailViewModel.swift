//
//  ItemDetailViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 09/05/24.
//

import Foundation

@Observable
class ItemDetailViewModel {
    
    // Dependencies
    let cart: Cart
    let item: Item
    
    init(cart: Cart, item: Item) {
        self.cart = cart
        self.item = item
    }
}

// MARK: - Presentation

extension ItemDetailViewModel {
    var isAddedToCart: Bool {
        cart.items.contains(item)
    }
    
    var addToCartButtonTitle: String {
        isAddedToCart ? "Added!" : "Add to Cart"
    }
}

// MARK: - Actions

extension ItemDetailViewModel {
    func addToCart() {
        cart.addItem(item)
    }
}
