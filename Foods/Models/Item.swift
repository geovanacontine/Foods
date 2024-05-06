//
//  Item.swift
//  Foods
//
//  Created by Geovana Contine on 03/05/24.
//

import Foundation

struct Item: Identifiable, Hashable {
    let id: String
    let name: String
    let calories: Int
    let price: Double
}
