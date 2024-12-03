//
//  Tab.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

enum Tab: String, CaseIterable {
    case main = "Главная"
    case pills = "Лекарства"
    case profile = "Профиль"
    
    var systemImage: String {
        switch self {
        case .main: return "house.fill"
        case .pills: return "pills"
        case .profile: return "person.crop.circle.fill"
        }
    }
    
    var index: Int {
        switch self {
        case .main: return 1
        case .pills: return 2
        case .profile: return 3
        }
    }
}
