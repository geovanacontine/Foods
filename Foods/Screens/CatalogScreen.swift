//
//  CatalogScreen.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct CatalogScreen: View {
    
    @Environment(Model.self) var model
    
    var sortedItems: [Item] {
        model.items.sorted(by: { $0.name < $1.name })
    }
    
    var body: some View {
        List {
            Section {
                ForEach(sortedItems) { item in
                    NavigationLink(value: item) {
                        ItemCompactView(item: item)
                    }
                }
            }
        }
        .navigationTitle("Catalog")
        .navigationDestination(for: Item.self) { item in
            ItemDetailScreen(item: item)
        }
        .task {
            model.loadItems()
        }
    }
}

#Preview {
    PreviewContainer {
        CatalogScreen()
    }
}
