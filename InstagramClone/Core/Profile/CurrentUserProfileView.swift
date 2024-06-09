//
//  CurrentUserProfileView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 08/06/24.
//

import SwiftUI

struct CurrentUserProfileView: View {
    
    let user: User
    
    var body: some View {
        NavigationStack {
            ProfileView(user: user)
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                // hamburger button
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button{
                        
                    }label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(Color.primary)
                    }
                    
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: User.MOCK_USERS[0])
}
