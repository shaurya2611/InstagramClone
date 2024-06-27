//
//  LoginView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 05/06/24.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewModel = LoginViewModel()
    
    var body: some View {
        NavigationStack{
            VStack{
                Spacer()
                // insta logo
                Image("insta")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    
                // Text Fields: email and password
                VStack(spacing: 15){
                    TextField("  Enter your email", text: $viewModel.email)
                        .textInputAutocapitalization(.none)
                        .withDefaultTextFiledFormatting()
                        
                    SecureField("  Enter your password", text: $viewModel.password)
                        .withDefaultTextFiledFormatting()
                }
                
                // forogot password button
                Button{
                    print("Forgot button pressed")
                }label: {
                    Text("Forgot Password?")
                        .fontWeight(.semibold)
                        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .trailing)
                }.padding()
                
                //Login Button
                Button{
                    Task{ try await viewModel.loginUser() }
                }label: {
                    Text("Log In")
                        .withDefaultButtonFormatting()
                }.padding(.vertical)
                
                //Divider with or
                HStack{
                    Rectangle()
                        .frame(width: .screenWidth/2-40, height: 2)
                        .foregroundStyle(Color(UIColor.systemGray4))
                    
                    Text("or")
                        .foregroundStyle(Color(UIColor.systemGray2))
                    
                    Rectangle()
                        .frame(width: .screenWidth/2-40, height: 2)
                        .foregroundStyle(Color(UIColor.systemGray4))
                }
                
                // facebook login button
                Button{
                    print("facebook button pressed")
                }label: {
                    Image("fblogo")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .padding(.trailing)
                        .padding(.horizontal,-30)
                    
                    Text("Continue with Facebook")
                        .fontWeight(.semibold)
                }
                
                Spacer()
                
                Divider()
                
                // sign up button
                NavigationLink {
                    AddEmailView()
                        .navigationBarBackButtonHidden()
                } label: {
                    HStack{
                        Text("Don't have an account")
                        
                        Text("Sign Up")
                            .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    }
                    .font(.footnote)
                    .foregroundStyle(Color.blue)
                    .padding(.vertical,10)
                    .padding(.top,10)
                }

            }
        }
    }
}

#Preview {
    LoginView()
}
