//
//  FoodsApp.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

@main
struct FoodsApp: App {
    
    let screenFactory = ScreenFactory(dependencies: Dependencies.shared)
    
    var body: some Scene {
        WindowGroup {
            TabView {
                TabViewItem("Menu", icon: "menucard") {
                    screenFactory.menuScreen()
                }
                
                TabViewItem("Cart", icon: "cart") {
                    screenFactory.cartScreen()
                }
                .badge(Dependencies.shared.cart.items.count)
            }
        }
    }
}
