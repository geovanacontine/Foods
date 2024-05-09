//
//  ItemCompactView.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct ItemCompactView: View {
    
    let item: Item
    
    var body: some View {
        HStack {
            Image(item.id)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 60, height: 60)
                .background {
                    RoundedRectangle(cornerRadius: 8)
                        .fill(.background.secondary)
                }
            
            VStack(alignment: .leading) {
                Text(item.name)
                
                Text("\(item.calories) kcal")
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Text(item.price, format: .currency(code: "BRL"))
        }
    }
}

#Preview {
    ItemCompactView(
        item: Item(
            id: "1",
            name: "Item name", 
            calories: 499,
            price: 9.99
        )
    )
    .padding()
}
