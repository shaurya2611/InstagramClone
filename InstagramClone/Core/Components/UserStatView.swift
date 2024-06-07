//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct UserStatView: View {
    
    let value: Int
    let title: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.subheadline)
                .fontWeight(.semibold)
            
            
            Text(title)
                .font(.footnote)
                .fontWeight(.semibold)
        }
    }
}

#Preview {
    UserStatView(value: 1, title: "Post")
}
