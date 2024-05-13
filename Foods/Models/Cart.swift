//
//  Cart.swift
//  Foods
//
//  Created by Geovana Contine on 09/05/24.
//

import Foundation

class Cart: ObservableObject {
    
    // State
    @Published var items: [Item] = []
    
    // Actions
    func addItem(_ item: Item) {
        items.append(item)
    }
    
    func removeItem(_ item: Item) {
        items.removeAll(where: { $0.id == item.id })
    }
}
