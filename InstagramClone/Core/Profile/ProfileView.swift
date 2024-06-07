//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct ProfileView: View {
    // it defines no of columns we want in pur grid
    let gridItem : [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    let posts: [String] = [ "shaurya1", "shaurya2", "shaurya3", "shaurya4"]
    
    var body: some View {
        
        NavigationStack {
            ScrollView {
                VStack{
                    
                    // Header View
                    VStack(spacing: 10){
                        // pics and stats
                        HStack{
                            
                            ProfilePicView(profilePic: "shauryadp", size: 80)
                            
                            Spacer()
                            UserStatView(value: 1, title: "Post")
                            Spacer()
                            UserStatView(value: 1, title: "Followers")
                            Spacer()
                            UserStatView(value: 1, title: "Following")
                
                        }
                        .padding(.horizontal)
                    
                        
                        // Name and bio
                        VStack(alignment: .leading){
                            Text("Shaurya Singh")
                            Text("iOS Developer")
                               
                        }
                        .font(.footnote).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.horizontal)
                        
                        
                        // Button
                        Button{
                            print("Edit Profile button pressed")
                        } label: {
                            Text("Edit Profile")
                                .frame(minWidth: 0, maxWidth: .screenWidth, minHeight: 40, maxHeight: 40)
                                .font(.callout)
                                .fontWeight(.semibold)
                                .foregroundStyle(.black)
                                .overlay(RoundedRectangle(cornerRadius: 10)
                                    .stroke(Color.black, lineWidth: 1.5))
                        }
                        .padding(.horizontal,10)
                        
                        Divider().padding(.horizontal)
                        
                    }
                    
                    
                    // posts grid view
                    LazyVGrid(columns: gridItem, content: {
                        ForEach(posts, id: \.self){post in
                            Image("shaurya1")
                                .resizable()
                                .scaledToFit()
                        }
                    })
                            
                    
                    
                }
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
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
    ProfileView()
}
    
