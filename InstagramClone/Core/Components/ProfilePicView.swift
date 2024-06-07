//
//  ProfilePicView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct ProfilePicView: View {
    
    let profilePic: String
    let size: CGFloat
    
    var body: some View {
        Image(profilePic)
            .resizable()
            .scaledToFill()
            .frame(width: size, height: size)
            .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/).shadow(radius: 3)
    }
}

#Preview {
    ProfilePicView(profilePic: "vibhudp", size: 100)
}
