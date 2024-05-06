//
//  PreviewContainer.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import SwiftUI

struct PreviewContainer<V: View>: View {
    
    @State var previewModel = Model()
    
    @ViewBuilder
    var view: V
    
    var body: some View {
        NavigationStack {
            view
        }
        .environment(previewModel)
    }
}
