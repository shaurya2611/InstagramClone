//
//  FeedCell.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack(spacing: 5){
            // profile pic and name
            HStack(spacing: 5){
                ProfilePicView(profilePic: "shauryadp", size: 40)
                
                Text("shaurya")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            .padding(.leading,6)
            
            // user post
            Image("guddi3")
                .resizable()
                .frame(width: .infinity, height: 400)
                .clipShape(Rectangle())
                
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
            Text("23 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading,6)
            
            //caption label
            HStack{
                Text("guddi ").fontWeight(.semibold) +
                Text("test caption")
                Spacer()
            }
            .font(.footnote)
            .padding(.leading,6)
         
            //likes label
            Text("6hr ago")
                .font(.footnote)
                .fontWeight(.semibold)
                .foregroundStyle(Color(UIColor.systemGray2))
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                .padding(.leading,6)
            
        }
    }
}

#Preview {
    FeedCell()
}
