//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct MainTabView: View {
    
    let currentUser: User = User.MOCK_USERS[0]
    
    var body: some View {
        TabView {
            
            FeedView()
                .tabItem {
                    Image(systemName: "house")
                }
            
            SearchView()
                .tabItem {
                    Image(systemName: "magnifyingglass")
                }
            
            UploadPostView()
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            CurrentUserProfileView(user: currentUser)
                .tabItem {
                    Image(systemName: "person")
                }

        }.accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
