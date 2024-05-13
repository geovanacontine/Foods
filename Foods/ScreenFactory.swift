//
//  ScreenFactory.swift
//  Foods
//
//  Created by Geovana Contine on 13/05/24.
//

import Foundation

// Router or Coordinator or Configurator
struct ScreenFactory {
    
    let dependencies: Dependencies
    
    func menuScreen() -> MenuScreen {
        let menu = dependencies.menu
        let viewModel = MenuViewModel(menu: menu)
        return MenuScreen(viewModel: viewModel)
    }
    
    func itemDetailScreen(item: Item) -> ItemDetailScreen {
        let cart = dependencies.cart
        let viewModel = ItemDetailViewModel(item: item, cart: cart)
        return ItemDetailScreen(viewModel: viewModel)
    }
    
    func cartScreen() -> CartScreen {
        let cart = dependencies.cart
        let viewModel = CartViewModel(cart: cart)
        return CartScreen(viewModel: viewModel)
    }
}
