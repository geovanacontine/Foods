//
//  RootScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct RootScreen: View {
    
    @Environment(Model.self) var model
    
    var body: some View {
        Group {
            NavigationStack {
                CatalogScreen()
            }
            .tabItem {
                Label("Menu", systemImage: "menucard")
            }
            
            NavigationStack {
                CartScreen()
            }
            .tabItem {
                Label("Cart", systemImage: "cart")
            }
            .badge(model.cart.count)
        }
    }
}

#Preview {
    RootScreen()
}
