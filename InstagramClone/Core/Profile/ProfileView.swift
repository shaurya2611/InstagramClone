//
//  ProfileView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/06/24.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    // filtering post from mock lits
    var posts: [Post] {
        return Post.POST_MOCKS.filter({ $0.user.username == user.username })
    }
    
    // for image
    let imageDimension: CGFloat = (UIScreen.main.bounds.width/3)-1
    
    // it defines no of columns we want in pur grid
    let gridItem : [GridItem] = [
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
        .init(.flexible(),spacing: 1),
    ]
    
    var body: some View {
            ScrollView {
                VStack{
                    
                    // Header View
                    VStack(spacing: 10){
                        // pics and stats
                        HStack{
                            
                            ProfilePicView(profilePic: user.profileImageUrl!, size: 80)
                            
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
                            if let fullName = user.fullName{
                                Text(fullName)
                            }
                            if let bio = user.bio{
                                Text(bio)
                            }
                            
                               
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
                            Image(post.imageUrl)
                                .resizable()
                                .scaledToFill()
                                .frame(width: imageDimension, height: imageDimension)
                                .clipped()
                        }
                    })
                            
                    
                    
                }
            }
            .padding(.top,10)
    }
}

#Preview {
    ProfileView(user: User.MOCK_USERS[0])
}
    
