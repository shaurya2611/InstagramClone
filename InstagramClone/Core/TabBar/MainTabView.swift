//
//  MainTabView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct MainTabView: View {
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
            
            Text("Home")
                .tabItem {
                    Image(systemName: "plus.circle")
                }
            
            Text("Home")
                .tabItem {
                    Image(systemName: "heart")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                }

        }.accentColor(.black)
    }
}

#Preview {
    MainTabView()
}
