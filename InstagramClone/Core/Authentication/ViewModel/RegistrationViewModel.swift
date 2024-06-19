//
//  RegistrationViewModel.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 18/06/24.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""

    func createUser() async throws{
        try await AuthService.shared.createUser(email: email, password: password, username: username)
    }
    
}
