//
//  OtherUsersProfileView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 08/06/24.
//

import SwiftUI

struct OtherUsersProfileView: View {
    
    let user: User
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ProfileView(user: user)
            .navigationTitle(user.username)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: {
                        // Your action here
                    }) {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(.primary)
                    }
                }
                
                ToolbarItem(placement: .navigationBarLeading) {
                    Image(systemName: "chevron.left")
                        .imageScale(.large).onTapGesture {
                            dismiss()
                        }
                }
            }
    }
}

#Preview {
    OtherUsersProfileView(user: User.MOCK_USERS[1])
}
