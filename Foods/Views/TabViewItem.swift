//
//  TabViewItem.swift
//  Foods
//
//  Created by Geovana Contine on 06/05/24.
//

import SwiftUI

struct TabViewItem<RootView: View>: View {
    
    private let title: String
    private let icon: String
    private var root: RootView
    
    init(
        _ title: String,
        icon: String,
        @ViewBuilder root: () -> RootView
    ) {
        self.title = title
        self.icon = icon
        self.root = root()
    }
    
    var body: some View {
        NavigationStack {
            root
        }
        .tabItem {
            Label(title, systemImage: icon)
        }
    }
}
