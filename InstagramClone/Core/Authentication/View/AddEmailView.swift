//
//  AddEmailView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 06/06/24.
//

import SwiftUI

struct AddEmailView: View {
    
    //Have used @EnvironmentObject to pass down RegistartionViewModel to all the subviews
    @EnvironmentObject var viewModel: RegistrationViewModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            
            Text("Add your email")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("You will use this email to sign in to your account")
                .font(.subheadline)
                .foregroundStyle(Color(UIColor.systemGray2))
                .multilineTextAlignment(.center)
                .padding(.bottom)
    
            // Email text field
            TextField("   Email",text: $viewModel.email)
                .textInputAutocapitalization(.none)
                .withDefaultTextFiledFormatting()
                .padding(.bottom)
            
            //Navogation Link to next view
            NavigationLink {// NavigationLink(destination , label)
                CreateUsername()
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
    AddEmailView()
}
