//
//  ProfileView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct ProfileView: View {
    @State private var showAlert = false
    @State private var name: String = ""
    @State private var brand: String = ""
    @State private var description: String = ""
    @Binding var pills: [Pill]

    var body: some View {
        VStack {
            Text("Профиль")
            Spacer()
            Image("Pill")
                .resizable()
                .scaledToFit()
            Spacer()
            Spacer()
            Button(action: {
                showAlert = true
            }) {
                Text("Добавить лекарство")
                Image(systemName: "pencil")
            }
            .alert("Добавление лекарства", isPresented: $showAlert) {
                VStack {
                    TextField("Наименование", text: $name)
                    TextField("Бренд", text: $brand)
                    TextField("Описание", text: $description)
                    Button("OK") {
                        if(!name.isEmpty) {
                            pills.append(Pill(name: name, description: description, brand: brand))
                        }
                        clearFields()
                    }
                }
            }
            Spacer()
        }
    }
    
    private func clearFields() {
        name = ""
        brand = ""
        description = ""
    }
}
