//
//  MenuViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import Foundation

@Observable
class MenuViewModel {
    
    // State
    var items: [Item] = []
}

// MARK: - Presentation

extension MenuViewModel {
    //
}

// MARK: - Actions

extension MenuViewModel {
    func loadItems() {
        items = [
            Item(id: "1", name: "Bic Mac", calories: 499, price: 19.9),
            Item(id: "2", name: "Quarter Pounder", calories: 549, price: 24.9),
            Item(id: "3", name: "Cheeseburger", calories: 298, price: 21.0)
        ]
    }
}
