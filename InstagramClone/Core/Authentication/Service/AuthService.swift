//
//  AuthService.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 09/06/24.
//

import Foundation
import FirebaseAuth

class AuthService{
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser // firebase code to check if user is logged in or not
    }
    
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(email: String, password: String, username: String) async throws{
        do{
            // get result after user created in firebase
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("New user created successfully : \(username)")
        }catch{
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    func loadUserData() async throws {
        
    }
    
    func signOut(){
        
    }
    
}
