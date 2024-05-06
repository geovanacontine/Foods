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
    private let badge: Int
    private var root: RootView
    
    init(
        _ title: String,
        icon: String,
        badge: Int = 0,
        @ViewBuilder root: () -> RootView
    ) {
        self.title = title
        self.icon = icon
        self.badge = badge
        self.root = root()
    }
    
    var body: some View {
        NavigationStack {
            root
        }
        .tabItem {
            Label(title, systemImage: icon)
        }
        .badge(badge)
    }
}
