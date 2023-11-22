//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 21/11/23.
//

import SwiftUI

struct AddEmailView: View {
    
    @State private var email = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack (spacing:10){
            
            Text("Add your email")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
           
            
            Text("You'll use this emai to sign in to your account")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom)
            
            TextField("Email", text: $email)
                .textInputAutocapitalization(.never)
                .modifier(INTextFieldModifier())
            
            NavigationLink {
                CreateUsernameView()
                    .navigationBarBackButtonHidden(true)
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
    AddEmailView()
}
