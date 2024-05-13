//
//  MenuViewModel.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import Foundation

class MenuViewModel {
    
    // Dependencies
    private let menu: FoodMenu
    
    init(menu: FoodMenu) {
        self.menu = menu
    }
}

// MARK: - Presentation

extension MenuViewModel {
    var items: [Item] {
        menu.items
    }
}

// MARK: - Actions

extension MenuViewModel {
    func loadItems() {
        menu.loadItems()
    }
}
