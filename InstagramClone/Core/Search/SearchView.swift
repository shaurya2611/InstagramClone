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
//NavifationLink with value :  present view corresponding to the value pressed (data i.e. user here)
//NavigationLink with destination: presents the given view in destination
                        NavigationLink(value: user) {
                            HStack(spacing: 10){
                                ProfilePicView(profilePic: user.profileImageUrl ?? "", size: 50)
                            
                                VStack(alignment: .leading, spacing: 2){
                                    Text(user.username)
                                    if let fullname = user.fullName{
                                        Text(fullname)
                                    }
                                }.font(.footnote).fontWeight(.bold).foregroundStyle(Color.primary)
                            }
                        }

                    }
                }.padding(.leading, 8).padding(.top, 10)
                //making list searchable
                .searchable(text: $searchText, prompt: "Search User")
            }
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
            // User clicked inside NavigationLink will be passed along with the view
            .navigationDestination(for: User.self) { user in
                OtherUsersProfileView(user: user)
                    .navigationBarBackButtonHidden()
            }
        }
    }
}

#Preview {
    SearchView()
}
