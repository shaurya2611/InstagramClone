//
//  LoginView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 21/11/23.
//

import SwiftUI

struct LoginView: View {
    
    @State var email: String = ""
    @State var password: String = ""
    
    var body: some View {
        NavigationStack{
            VStack (spacing:20){
                
                Spacer()
                Image("insta")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 100)
                    
                
                // email text field
                TextField("Email", text: $email)
                    .textInputAutocapitalization(.never)
                    .modifier(INTextFieldModifier())
                
                // password text field
                SecureField("Password", text: $password)
                    .modifier(INTextFieldModifier())
                
                // forgot password button
                HStack{
                    Spacer()
                    Button{
                        // code for forgot password
                    }label: {
                        Text("Forgot Password?")
                    }
                }.padding(.horizontal,20)
                
                // Login Button
                Button{
                    // to edit profile
                }label: {
                    INButton(label: "Log In", forgroundColor: .white, backgroundColor: .blue)
                }
                
                // OR devider
                HStack{
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40, height: 0.5)
                    Text("OR")
                        .font(.footnote)
                        .fontWeight(.semibold)
                    Rectangle()
                        .frame(width: (UIScreen.main.bounds.width/2)-40, height: 0.5)
                }.foregroundColor(.gray).padding()
                
                
                // facebook link
                HStack{
                    Image("fblogo")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 30, height: 30)
                    
                    Button{
                        // code for forgot password
                    }label: {
                        Text("Connect with Facebook")
                            .font(.footnote)
                            .fontWeight(.semibold)
                    }
                }
                
                Spacer()
                
                Divider().foregroundColor(.gray)
                
                NavigationLink{
                    AddEmailView()
                        .navigationBarBackButtonHidden(true) // this will hide back button in next screen
                } label: {
                    HStack{
                        Text("Don't have an account")
                        
                        Text("Sign Up")
                            .fontWeight(.semibold)
                    }.font(.footnote)
                }
            }
        }
    }
}

#Preview {
    LoginView()
}
