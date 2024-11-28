//
//  PillsView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct PillsView: View {
    @Binding var path: NavigationPath
    @Binding var pills: [Pill]
    
    var body: some View {
        VStack {
            Text("Список лекарств")
            NavigationStack(path: $path) {
                List(pills) { pill in
                    NavigationLink(pill.name, value: pill)
                }
                .navigationDestination(for: Pill.self) { pill in
                    PillView(pill: pill)
                }
            }
        }
    }
}
