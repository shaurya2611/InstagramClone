//
//  IGTextFieldModifier.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 06/06/24.
//

import SwiftUI

struct IGTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline).fontWeight(.medium)
            .frame(minWidth: 0, maxWidth: .screenWidth, minHeight: 50, maxHeight: 50)
            .background(Color(.systemGray6))
            .clipShape(RoundedRectangle(cornerRadius: 12))
            .padding(.horizontal, 20)
    }
}

extension View{
    
    func withDefaultTextFiledFormatting() -> some View {
        modifier(IGTextFieldModifier())
    }
    
}
