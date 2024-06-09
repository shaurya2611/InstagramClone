//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct FeedCell: View {
    
    let post: Post
    
    var body: some View {
        VStack(spacing: 5){
            // profile pic and name
            HStack(spacing: 5){
                if let userPic = post.user.profileImageUrl{
                    ProfilePicView(profilePic: userPic, size: 40)
                }
                
                Text(post.user.username)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading,6)
            
            // user post
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(width: UIScreen.main.bounds.width, height: 400)
                .clipped()
                
            // like comments button
            HStack(spacing: 15){
                
                Button{
                    
                }label: {
                    Image(systemName: "heart")
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "bubble.right")
                }
                
                Button{
                    
                }label: {
                    Image(systemName: "paperplane")
                }
                
                Spacer()
            }
            .imageScale(.large)
            .fontWeight(.semibold)
            .foregroundStyle(Color.primary)
            .padding(.leading,6)
            
            //likes label
            Text("\(post.likes) likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading,6)
            
            //caption label
            HStack{
                Text(post.user.username).fontWeight(.semibold) +
                Text(" \(post.caption)")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading,6)
         
            //likes label
            Text("\(post.timeStamp)")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(Color(UIColor.systemGray2))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading,6)
            
        }
    }
}

#Preview {
    FeedCell(post: Post.POST_MOCKS[3])
}
