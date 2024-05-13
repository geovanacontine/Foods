//
//  MenuScreen.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct MenuScreen: View {
    
    let viewModel: MenuViewModel
    let screenFactory = ScreenFactory(dependencies: Dependencies.shared)
    
    var body: some View {
        List {
            Section {
                ForEach(viewModel.items) { item in
                    NavigationLink(value: item) {
                        ItemCompactView(item: item)
                    }
                }
            }
        }
        .navigationTitle("Menu")
        .navigationDestination(for: Item.self) { item in
            screenFactory.itemDetailScreen(item: item)
        }
        .task {
            viewModel.loadItems()
        }
    }
}
