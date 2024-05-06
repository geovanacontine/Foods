//
//  CartCheckoutView.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct CartCheckoutView: View {
    
    @Environment(Model.self) var model
    
    var totalPrice: Double {
        model.cart.map({ $0.price }).reduce(0, +)
    }
    
    var body: some View {
        VStack {
            SingleRowView(title: "Total", value: "R$ \(totalPrice)")
        }
    }
}
