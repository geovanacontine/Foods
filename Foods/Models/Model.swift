//
//  Model.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import Foundation

@Observable
class Model {
    
    // MARK: - State
    
    var items: [Item] = []
    var cart: [Item] = []
    
    // MARK: - Actions
    
    func loadItems() {
        items = [
            Item(id: "1", name: "Bic Mac", calories: 499, price: 19.9),
            Item(id: "2", name: "Quarter Pounder", calories: 549, price: 24.9),
            Item(id: "3", name: "Cheeseburger", calories: 298, price: 21.0)
        ]
    }
    
    func addToCart(_ item: Item) {
        cart.append(item)
    }
    
    func removeFromCart(_ item: Item) {
        cart.removeAll(where: { $0.id == item.id })
    }
}
