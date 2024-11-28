//
//  CustomTextUIView.swift
//  otus
//
//  Created by Aleksandr Chubkov on 28.11.2024.
//

import SwiftUI

struct CustomTextUIView: UIViewRepresentable {
    @Binding var text: NSMutableAttributedString
    
    func makeUIView(context: Context) -> UITextView {
        UITextView()
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.attributedText = text
        uiView.textColor = .red
        uiView.font = .systemFont(ofSize: .init(24))
        uiView.isEditable = false
        uiView.textAlignment = .center
        uiView.textContainer.maximumNumberOfLines = 2
    }
}
