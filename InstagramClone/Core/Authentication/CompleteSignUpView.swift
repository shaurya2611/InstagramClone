//
//  CompleteSignUpView.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import SwiftUI

struct CompleteSignUpView: View {
    var body: some View {
        VStack{
            
            Spacer()
            Text("Welcome to Instagram,")
                .font(.title2)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding(.top)
            
//            Text("Shaurya Singh")
//                .font(.title2)
//                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
//                .padding(.top)
            LinearGradient(
                        gradient: Gradient(colors: [Color.red, Color.blue]),
                        startPoint: .leading,
                        endPoint: .trailing
                    )
                    .mask(Text("Shaurya Singh").font(.title).bold())
                    .frame(width:.infinity, height: 40)
                
            
            Text("Click below to complete signup flow and start using Instagram")
                .font(.footnote)
                .foregroundColor(.gray)
                .multilineTextAlignment(.center)
                .padding(.horizontal)
                .padding(.bottom)
            
            
            NavigationLink {
                CompleteSignUpView()
                    .navigationBarBackButtonHidden()
            } label: {
                Text("Complete Sign Up")
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
        }
    }
}

#Preview {
    CompleteSignUpView()
}
