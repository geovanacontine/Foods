//
//  CartViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import Foundation

class CartViewModel: ObservableObject {
    
    // Dependencies
    private var cart: Cart?
    
    // State
    @Published var items: [Item] = []
}

// MARK: - Presentation

extension CartViewModel {
    var totalPrice: Double {
        items.map({ $0.price }).reduce(0, +)
    }
}

// MARK: - Actions

extension CartViewModel {
    func loadItems() {
        items = cart?.items ?? []
    }
    
    func addItem(_ item: Item) {
        cart?.addItem(item)
        loadItems()
    }
    
    func removeItem(at offsets: IndexSet) {
        let itemsToDelete = offsets.map { items[$0] }
        
        for item in itemsToDelete {
            cart?.removeItem(item)
        }
        
        loadItems()
    }
    
    func setupDependencies(cart: Cart) {
        self.cart = cart
    }
}
