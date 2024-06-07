//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import SwiftUI

struct CompleteSignUpView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack(spacing: 10){
            
            Text("Welcome to Instagram,")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
            Text("Shaurya singh")
                .font(.largeTitle).fontWeight(.heavy)
                .foregroundStyle(LinearGradient(colors: [Color.red, Color.blue], startPoint: .leading, endPoint: .trailing))
            
            Text("Click below to complete registartion and start using instagram")
                .font(.subheadline)
                .foregroundStyle(Color(UIColor.systemGray2))
                .multilineTextAlignment(.center)
                .padding(.bottom).padding(.horizontal)
    
            
            //Navogation Link to next view
            NavigationLink {// NavigationLink(destination , label)
                CreatePassword()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Complete Sign Up")
                    .withDefaultButtonFormatting()
            }
            // Above navigation link not needed to be placed inside the navigation stack as,we have after that path is fixed where user can navigate
            
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
    CompleteSignUpView()
}
