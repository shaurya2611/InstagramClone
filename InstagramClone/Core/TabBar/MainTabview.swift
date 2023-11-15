//
//  MainTabview.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 14/11/23.
//

import SwiftUI

struct MainTabview: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem { Image(systemName: "house") }
            
            Text("Home")
                .tabItem { Image(systemName: "magnifyingglass") }
            
            Text("Home")
                .tabItem { Image(systemName: "plus.square") }
            
            Text("heart")
                .tabItem { Image(systemName: "heart") }
            
            ProfileView()
                .tabItem { Image(systemName: "person") }
            
        }.accentColor(.black)
        
    }
}

#Preview {
    MainTabview()
}
