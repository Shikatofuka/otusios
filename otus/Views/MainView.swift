//
//  MainView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct MainView: View {
    @Binding var tabSelection: Int
    @Binding var path: NavigationPath
    @Binding var pills: [Pill]
    @State var text = NSMutableAttributedString(string: "Допустим\nпривет")
    
    var body: some View {
        VStack {
            Text("Главная")
            Spacer()
            CustomTextUIView(text: $text)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 300)
            Spacer()
            Button("Открыть случайное лекарство") {
                tabSelection = Tab.pills.index
                path.append(pills[Int.random(in: 0..<pills.count)])
            }
            Spacer()
        }
    }
}
