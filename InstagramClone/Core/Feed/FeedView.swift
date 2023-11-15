//
//  FeedView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 15/11/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack(spacing: 25){
                    ForEach((1 ... 10), id:\.self){data in
                        FeedCellView()
                    }
                }
                
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button{
                        // forward post
                    }label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundColor(.black)
                    }
                }
                
                ToolbarItem(placement: .topBarLeading) {
                    Image("insta")
                        .resizable()
                        .scaledToFill()
                        .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: 30)
                }
            }
            
        }
    }
}

#Preview {
    FeedView()
}
