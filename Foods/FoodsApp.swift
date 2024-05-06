//
//  FoodsApp.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

@main
struct FoodsApp: App {
    
    @State var model = Model()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                TabViewItem("Menu", icon: "menucard") {
                    CatalogScreen()
                }
                
                TabViewItem("Cart", icon: "cart", badge: model.cart.count) {
                    CartScreen()
                }
            }
            .environment(model)
        }
    }
}