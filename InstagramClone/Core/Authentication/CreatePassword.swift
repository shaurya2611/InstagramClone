//
//  CreatePassword.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import SwiftUI

struct CreatePassword: View {
    @State private var password = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack (spacing:10){
            
            Text("Create Password")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
           
            
            Text("Create a password of ltleast 6 character of length")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom)
            
            
            
            TextField("password", text: $password)
                .textInputAutocapitalization(.never)
                .modifier(INTextFieldModifier())
            
            TextField("confirm password", text: $password)
                .textInputAutocapitalization(.never)
                .modifier(INTextFieldModifier())
            
            NavigationLink {
                CompleteSignUpView()
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
    CreatePassword()
}
