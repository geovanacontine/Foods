//
//  Dependencies.swift
//  Foods
//
//  Created by Geovana Contine on 13/05/24.
//

import Foundation

// Dependency Manager or Dependency Injector
class Dependencies {
    
    // Dependencies
    private(set) var cart: Cart
    private(set) var menu: FoodMenu
    
    private init(cart: Cart, menu: FoodMenu) {
        self.cart = cart
        self.menu = menu
    }
    
    // Singleton pattern
    // Search for dependency container examples
    static let shared = Dependencies(
        cart: Cart(),
        menu: FoodMenu()
    )
}
