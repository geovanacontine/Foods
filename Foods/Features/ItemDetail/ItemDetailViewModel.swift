//
//  ItemDetailViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 09/05/24.
//

import Foundation

class ItemDetailViewModel: ObservableObject {
    
    // Dependencies
    private var cart: Cart?
    private(set) var item: Item
    
    // State
    @Published var isAddedToCart = false
    
    init(item: Item) {
        self.item = item
    }
}

// MARK: - Presentation

extension ItemDetailViewModel {
    var addToCartButtonTitle: String {
        isAddedToCart ? "Added!" : "Add to Cart"
    }
}

// MARK: - Actions

extension ItemDetailViewModel {
    func loadData() {
        isAddedToCart = cart?.items.contains(item) ?? false
    }
    
    func addToCart() {
        cart?.addItem(item)
        loadData()
    }
    
    func setupDependencies(cart: Cart) {
        self.cart = cart
    }
}
