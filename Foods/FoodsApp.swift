//
//  FoodsApp.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

@main
struct FoodsApp: App {
    
    @StateObject var cart = Cart()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                TabViewItem("Menu", icon: "menucard") {
                    MenuScreen()
                }
                
                TabViewItem("Cart", icon: "cart", badge: cart.items.count) {
                    CartScreen()
                }
            }
            .environmentObject(cart)
        }
    }
}
