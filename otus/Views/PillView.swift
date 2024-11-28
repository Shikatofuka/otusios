//
//  PillView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct PillView: View {
    let pill: Pill
    var body: some View {
        HStack {
            Image(systemName: "pills")
            VStack {
                Text(pill.name)
                    .font(.system(size: 40))
                Text(pill.brand)
                    .font(.system(size: 10))
                Text(pill.description)
                    .font(.system(size: 20))
            }
        }
        .padding(50)
    }
}

#Preview {
    PillView(pill: Pill(name: "Test", description: "test", brand: "Test"))
}
