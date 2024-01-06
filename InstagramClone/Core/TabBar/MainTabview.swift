//
//  MainTabview.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 14/11/23.
//

import SwiftUI

/* View -> Protocol (like interface in java)
    View protocol has associatedtype declared imside it (Variable type declared in run time)
    Some keyword help in encapusulation, i.e. hiding return type  
*/
struct MainTabview: View {
    var body: some View {
        TabView{
            FeedView()
                .tabItem { Image(systemName: "house") }
            
            SearchView()
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
