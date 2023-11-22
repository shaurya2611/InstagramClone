//
//  INTextFieldModifier.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import SwiftUI

// exetnd ViewModifier protocol
struct INTextFieldModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        content
            .font(.subheadline)
            .padding(10) // for inbox space
            .background(Color(.systemGray6))
            .cornerRadius(10)
            .padding(.horizontal,20)// forwidth spacing
        
    }
}
