//
//  SearchView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct SearchView: View {
    
    @State var searchText: String =  ""
    
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(alignment: .leading, spacing: 8){
                    ForEach(User.MOCK_USERS){user in
                        HStack(spacing: 10){
                            ProfilePicView(profilePic: user.profileImageUrl ?? "", size: 50)
                        
                            VStack(alignment: .leading, spacing: 2){
                                Text(user.username)
                                if let fullname = user.fullName{
                                    Text(fullname)
                                }
                            }.font(.footnote).fontWeight(.bold)
                        }
                    }
                }.padding(.leading, 8).padding(.top, 10)
                //making list searchable
                    .searchable(text: $searchText, prompt: "Search User")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
