//
//  CreateUsername.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 06/06/24.
//

import SwiftUI

struct CreateUsername: View {
    
    @State private var username: String = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            
            Text("Create Username")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Pick an userbname for your new account. You can always change it later")
                .font(.subheadline)
                .foregroundStyle(Color(UIColor.systemGray2))
                .multilineTextAlignment(.center)
                .padding(.bottom).padding(.horizontal)
    
            // Email text field
            TextField("   Username",text: $username)
                .textInputAutocapitalization(.none)
                .withDefaultTextFiledFormatting()
                .padding(.bottom)
            
            //Navogation Link to next view
            NavigationLink {// NavigationLink(destination , label)
                CreatePassword()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .withDefaultButtonFormatting()
            }
            // Above navigation link not needed to be placed inside the navigation stack as,we have after that path is fixed where user can navigate
            
            Spacer()
        }
        .toolbar{
            ToolbarItem(placement: .topBarLeading) {
                Image(systemName: "chevron.left")
                    .imageScale(.large)
                    .onTapGesture {
                        dismiss()
                    }
                    
            }
        }
    }
}

#Preview {
    CreateUsername()
}
