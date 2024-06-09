//
//  User.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 07/06/24.
//

import Foundation

struct User: Identifiable, Hashable ,Codable{
    let id: String // let as id will never change
    var username: String // var, as user can change username later
    var profileImageUrl: String? // optional as user can have image or not
    var fullName: String?
    var bio: String?
    let email: String // let and non optional
    
    
}


extension User{
    
    static var MOCK_USERS: [User] = [
        .init(id: NSUUID().uuidString, username: "shaurya2611", profileImageUrl: "shauryadp", fullName: "Shaurya Singh", bio: "iOS Dev", email: "shaurya2611@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "vibhu1206", profileImageUrl: "vibhudp", bio: "Java Dev", email: "vibhu@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "aarav.guddi", profileImageUrl: "guddidp", fullName: "Aarav Kumar", bio: "toodler", email: "guddi@gmail.com")
        
        
    ]
    
    
}
