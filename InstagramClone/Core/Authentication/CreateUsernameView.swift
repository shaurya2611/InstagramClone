//
//  CreateUsernameView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack (spacing:10){
            
            Text("Create User")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
           
            
            Text("Pick a user for your new account, you can always change it later")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom)
            
            TextField("username", text: $username)
                .textInputAutocapitalization(.never)
                .modifier(INTextFieldModifier())
            
            NavigationLink {
                CreatePassword()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 35)
                    .foregroundColor(.white)
                    .background(.blue)
                    .cornerRadius(8)
                    .overlay {
                        RoundedRectangle(cornerRadius: 5)
                            .stroke(Color(.gray), lineWidth: 2)
                    }
            }.padding(.top)
            
            Spacer()
        }.toolbar{
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
    CreateUsernameView()
}
