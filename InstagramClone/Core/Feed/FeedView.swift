//
//  FeedView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing: 24){
                    ForEach(Post.POST_MOCKS){post in
                        FeedCell(post: post)
                    }
                
                    
                }
                .padding(.top,8)
            }
            .navigationTitle("Feeds")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Image("insta")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 100)
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Image(systemName: "paperplane")
       
                }
            }
        }
    }
}

#Preview {
    FeedView()
}
