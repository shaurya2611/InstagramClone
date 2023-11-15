//
//  INButton.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 14/11/23.
//

import SwiftUI

struct INButton: View {
    let label: String
    
    var body: some View {
        Text(label)
            .font(.subheadline)
            .fontWeight(.semibold)
            .frame(width: 360, height: 35)
            .foregroundColor(.black)
            .overlay {
                RoundedRectangle(cornerRadius: 5)
                    .stroke(Color(.gray), lineWidth: 2)
            }
    }
}

#Preview {
    INButton(label: "Edit Profile")
}
