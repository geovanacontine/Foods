//
//  CartScreen.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI
import PassKit

struct CartScreen: View {
    
    @Environment(Model.self) var model
    
    var body: some View {
        List {
            Section("Checkout") {
                CartCheckoutView()
            }
            
            Section("Items") {
                CartItemsView()
            }
        }
        .navigationTitle("Cart")
    }
}

#Preview {
    PreviewContainer {
        CartScreen()
    }
}
