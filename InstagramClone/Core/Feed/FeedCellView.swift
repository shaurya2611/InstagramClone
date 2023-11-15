//
//  FeedCellView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 15/11/23.
//

import SwiftUI

struct FeedCellView: View {
    var body: some View {
        VStack{
            // profile pic and name
            HStack{
                Image("ironman")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 40, height: 40)
                    .clipShape(.circle)
                
                Text("Friend")
                    .font(.footnote)
                    .fontWeight(.semibold)
                
                Spacer()
            }
            
            //Post Image
            Image("ironman")
                .resizable()
                .scaledToFit()
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
            Text("77 likes")
            .font(.footnote)
            .fontWeight(.semibold)
            .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/ , alignment: .leading)
            .padding(.leading, 5)
            
            // caption label
            HStack{
                Text("username ").fontWeight(.semibold) +
                Text("test caption")
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
    FeedCellView()
}
