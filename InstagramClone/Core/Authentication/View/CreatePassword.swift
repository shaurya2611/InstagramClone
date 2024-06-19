//
//  CreatePassword.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct CreatePassword: View {
    
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            
            Text("Create Password")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Your password must be atleast 6 character in length")
                .font(.subheadline)
                .foregroundStyle(Color(UIColor.systemGray2))
                .multilineTextAlignment(.center)
                .padding(.bottom).padding(.horizontal)
    
            // Email text field
            TextField("   Password",text: $viewModel.password)
                .textInputAutocapitalization(.none)
                .withDefaultTextFiledFormatting()
                .padding(.bottom)
            
            //Navogation Link to next view
            NavigationLink {// NavigationLink(destination , label)
                CompleteSignUpView()
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
    CreatePassword()
}
