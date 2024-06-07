//
//  IGButtonModifier.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 06/06/24.
//

import SwiftUI

struct IGButtonModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.headline)
            .frame(minWidth: 0, maxWidth: .screenWidth, minHeight: 50, maxHeight: 50)
            .background(Color.blue)
            .foregroundColor(Color.white)
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal,20)
    }
}

extension View {
    func withDefaultButtonFormatting() -> some View{
        modifier(IGButtonModifier())
    }
}

