//
//  Pill.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import Foundation

struct Pill: Identifiable, Hashable {
    var id = UUID()
    let name: String
    let description: String
    var brand: String
}
