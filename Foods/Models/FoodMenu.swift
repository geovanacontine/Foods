//
//  FoodMenu.swift
//  Foods
//
//  Created by Geovana Contine on 13/05/24.
//

import Foundation

@Observable
class FoodMenu {
    
    // State
    var items: [Item] = []
}

// Actions
extension FoodMenu {
    func loadItems() {
        items = [
            Item(id: "1", name: "Bic Mac", calories: 499, price: 19.9),
            Item(id: "2", name: "Quarter Pounder", calories: 549, price: 24.9),
            Item(id: "3", name: "Cheeseburger", calories: 298, price: 21.0)
        ]
    }
}
