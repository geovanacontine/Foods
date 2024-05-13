//
//  ItemDetailViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 09/05/24.
//

import Foundation

class ItemDetailViewModel {
    
    // Dependencies
    private let cart: Cart
    private(set) var item: Item
    
    init(item: Item, cart: Cart) {
        self.item = item
        self.cart = cart
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
