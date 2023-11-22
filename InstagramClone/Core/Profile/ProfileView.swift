//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 14/11/23.
//

import SwiftUI

struct ProfileView: View {
    
    private let gridItems : [GridItem] = [
        GridItem(.flexible(), spacing: 1), // spacing b/w columnd
        GridItem(.flexible(), spacing: 1),
        GridItem(.flexible(), spacing: 1)
    ]
    
    
    var body: some View {
        NavigationView{
            ScrollView{
                // header
                VStack (spacing:15){
                    // pic and stats
                    HStack (spacing:40){
                        
                        Image("ironman")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 80, height: 80)
                            .clipShape(.circle)
                        
                        UserStatView(value: 1, title: "Post")
                        UserStatView(value: 1, title: "Followers")
                        UserStatView(value: 1, title: "Following")
                    }
                    
                    // name and bio
                    VStack(alignment:.leading){
                        TextView(text: "Shaurya Singh", font: .footnote)
                        TextView(text: "iOS Devolper", font: .footnote)
                    }.frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                        .padding(.horizontal)
                    
                    
                    // Edit button
                    Button{
                        // to edit profile
                    }label: {
                        INButton(label: "Edit Profile", forgroundColor: .black, backgroundColor: .white )
                    }
                    
                    // divider
                    Divider()
                }
                
                // post and grid view
                LazyVGrid(columns: gridItems, spacing: 1) { // spacing b/w rows
                    ForEach(0 ... 15 , id: \.self){index in
                        Image("ironman1")
                            .resizable()
                            .scaledToFill()
                    }
                }.padding(1)
            }
            .navigationTitle("Profile").font(.title).bold()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement:.navigationBarTrailing) {
                    Button {
                        //action
                    } label: {
                        Image(systemName: "line.3.horizontal").foregroundColor(.black)
                    }

                }
            }
        }
    }
}

#Preview {
    ProfileView()
}

struct TextView: View {
    var text: String
    let font: Font
    var body: some View {
        Text(text)
            .font(font)
            .fontWeight(.semibold)
    }
}
