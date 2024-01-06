//
//  FeedCellView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 15/11/23.
//

import SwiftUI

struct FeedCellView: View {
    let post: Post
    var body: some View {
        VStack{
            // profile pic and name
            HStack{
                Image((post.user?.profileImageUrl)!)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                Text(post.user!.username)
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            //Post Image
            Image(post.imageUrl)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, maxHeight: 400)
                .clipShape(Rectangle())
            
            // like ,comment and send action button
            HStack(spacing:15){
                Button{
                    // like the post
                }label: {
                    Image(systemName: "heart")
                        .imageScale(.large)
                }
                
                Button{
                    // cooment on post
                }label: {
                    Image(systemName: "bubble.right")
                        .imageScale(.large)
                }
                
                Button{
                    // send post
                }label: {
                    Image(systemName: "paperplane")
                        .imageScale(.large)
                }
                
                Spacer()
            }
            .foregroundColor(.black)
            .padding(.leading ,5)
            
            //likes label
            Text("\(post.likes) likes")
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
            .padding(.leading, 5)
            
            // caption label
            HStack{
                Text("\(post.user?.username ?? "") ").fontWeight(.semibold) +
                Text(post.caption)
                Spacer()
            }
            .font(.footnote)
            .padding(.leading ,5)
            
            // post time
            //likes label
            Text("6h ago")
            .font(.footnote)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
            .foregroundColor(.gray)
            .padding(.leading, 5)
      
        }
    }
}

#Preview {
    FeedCellView(post: Post.MOCK_POSTS[0])
}
