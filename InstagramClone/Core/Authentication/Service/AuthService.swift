//
//  AuthService.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 09/06/24.
//

import Foundation
import FirebaseAuth
import FirebaseFirestore

class AuthService{
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser // firebase code to check if user is logged in or not
        Task { try await loadUserData()}
    }
    
    
    func login(withEmail email: String, password: String) async throws {
        do{
            // get result after user created in firebase
            let result = try await Auth.auth().signIn(withEmail: email, password: password)
            self.userSession = result.user
        }catch{
            print("DEBUG: Failed to login user with error \(error.localizedDescription)")
        }
    }
    
    func createUser(email: String, password: String, username: String) async throws{
        do{
            // get result after user created in firebase
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
            print("DEBUG: New user created successfully : \(username)")
            await uploadUserData(uid: result.user.uid, username: username, email: email)
            print("DEBUG: User did upload..")
        }catch{
            print("DEBUG: Failed to create user with error \(error.localizedDescription)")
        }
    }
    
    //getting current user data from firebase cloudstore
    func loadUserData() async throws {
        guard let currentUserUid = Auth.auth().currentUser?.uid else { return  }
        let snapshot = try await Firestore.firestore().collection("users").document(currentUserUid).getDocument()
        print("DEBUG: User did loaded : \(String(describing: snapshot.data()))")
    }
    
    func signOut(){
        try? Auth.auth().signOut()
        self.userSession = nil
    }
    
    // insertign data into firebase database
    private func uploadUserData(uid: String, username: String, email: String) async {
        let user = User(id: uid, username: username, email: email)
        guard let encodedUser = try? Firestore.Encoder().encode(user) else { return }
        try? await Firestore.firestore().collection("user").document(user.id).setData(encodedUser)
    }
   
}
