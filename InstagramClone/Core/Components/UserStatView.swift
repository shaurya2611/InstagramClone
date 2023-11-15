//
//  UserStatView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 14/11/23.
//

import SwiftUI

struct UserStatView: View {
    let value: Int
    let title: String
    var body: some View {
        VStack(spacing:5){
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
    UserStatView(value: 1, title: "Followers")
}
