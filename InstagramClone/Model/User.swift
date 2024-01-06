//
//  User.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 22/11/23.
//

import Foundation

struct User: Identifiable,Hashable, Codable{  // mark identifiabble here, when used inside for loop, \.self will not be req.
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullName: String?
    var bio: String?
    let email: String
    
}

extension User{
    static var MOCT_USERS : [User] = [
        User(
            id: NSUUID().uuidString,
            username: "shaurya2611",
            profileImageUrl: "shauryadp",
            fullName: "Shaurya Singh",
            bio: "iOS Dev",
            email: "shaurya@gmail.com"),
        
        User(id: NSUUID().uuidString, 
             username: "vibhu0712",
             profileImageUrl: "vibhudp",
             fullName: "Shanti Devi",
             bio: "Bestest Chotu",
             email: "chotu@gmail.com"),
        
        User(id: NSUUID().uuidString, 
             username: "guddi1811",
             profileImageUrl: "guddidp",
             fullName: "Guddi Kumari",
             bio: "Cutest Kid",
             email: "guddi@gmail.com")
        
    ]
}
