//
//  CartViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import Foundation

@Observable
class CartViewModel {
    
    // Dependencies
    private let cart: Cart
    
    init(cart: Cart) {
        self.cart = cart
    }
}

// MARK: - Presentation

extension CartViewModel {
    var items: [Item] {
        cart.items
    }
    
    var totalPrice: Double {
        items.map({ $0.price }).reduce(0, +)
    }
}

// MARK: - Actions

extension CartViewModel {
    func addItem(_ item: Item) {
        cart.addItem(item)
    }
    
    func removeItem(at offsets: IndexSet) {
        let itemsToDelete = offsets.map { items[$0] }
        
        for item in itemsToDelete {
            cart.removeItem(item)
        }
    }
}
