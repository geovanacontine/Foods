//
//  EmptyCartView.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct EmptyCartView: View {
    var body: some View {
        ContentUnavailableView(
            "Empty Cart",
            systemImage: "cart",
            description: Text("Start adding items to see them here")
        )
    }
}

#Preview {
    EmptyCartView()
}
