//
//  SearchView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import SwiftUI

struct SearchView: View {
    
    @State var userName = ""
    var body: some View {
        NavigationStack{
            ScrollView{
                LazyVStack(spacing:12){
                    ForEach(User.MOCT_USERS){user in
                        NavigationLink(value: user){
                            HStack{
                                Image(user.profileImageUrl ?? "ironman")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 40, height: 40)
                                    .clipShape(.circle)
                                
                                VStack(alignment:.leading){
                                    TextView(text: user.username, font: .footnote)
                                    if let fullName = user.fullName{
                                        TextView(text: fullName, font: .footnote)
                                    }
                                    
                                }.font(.footnote)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                 
                            }
                            .foregroundColor(Color.black)
                            .padding(.leading)
                        }
                    }
                }.searchable(text: $userName, prompt: "Search User")
            }
            .navigationDestination(for: User.self, destination: {user in ProfileView()})
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    SearchView()
}
