//
//  LoginViewModel.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 24/06/24.
//

import Foundation

class LoginViewModel: ObservableObject{
    
    @Published var email = ""
    @Published var password = ""
    
    func loginUser() async throws{
        try await AuthService.shared.login(withEmail: email, password: password)
    }
}
