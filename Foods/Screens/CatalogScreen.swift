//
//  CatalogScreen.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct CatalogScreen: View {
    
    @Environment(Model.self) var model
    
    var body: some View {
        List {
            Section {
                ForEach(model.items) { item in
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
