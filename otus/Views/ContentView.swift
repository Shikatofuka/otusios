//
//  ContentView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var tabSelection = 1
    @State private var path: NavigationPath = NavigationPath()
    @State private var pills: [Pill] = [
        Pill(name: "Пенталгин", description: "от боли", brand: "ОТИСИФАРМ"),
        Pill(name: "Глицин", description: "по приколу",brand: "ВТФ"),
        Pill(name: "Нурофен", description: "от боли",brand: "РЕКИТТ БЕНКИЗЕР ХЕЛСКЭР")
    ]
    
    var body: some View {
        TabView(selection: $tabSelection) {
            MainView(tabSelection: $tabSelection, path: $path, pills: $pills)
                .tabItem {
                    Label(Tab.main.rawValue, systemImage: Tab.main.systemImage)
                }
                .tag(1)
            PillsView(path: $path, pills: $pills)
                .tabItem {
                    Label(Tab.pills.rawValue, systemImage: Tab.pills.systemImage)
                }
                .tag(2)
            ProfileView(pills: $pills)
                .tabItem {
                    Label(Tab.profile.rawValue, systemImage: Tab.profile.systemImage)
                }
                .tag(3)
        }
    }
}
