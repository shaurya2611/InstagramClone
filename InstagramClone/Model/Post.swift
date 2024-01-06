//
//  Post.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 04/01/24.
//

import Foundation

// Identifiable : So that list can be displayed in list in swiftui
// Hashable : req when each post has to be made navigatable, in navigatin deetination
// Codable : To upload or download info to/from server
struct Post: Identifiable, Codable,Hashable{
    let id: String  // req. by identifiable protocol
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}
// creating mock data

extension Post{
    static var MOCK_POSTS: [Post] = [
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Test Caption",
                likes: 70,
                imageUrl: "guddi1",
                timestamp: Date(),
                user: User.MOCT_USERS[0]),
            
            .init(
                id: NSUUID().uuidString,
                ownerUid: NSUUID().uuidString,
                caption: "Test Caption 2",
                likes: 79,
                imageUrl: "guddi2",
                timestamp: Date(),
                user: User.MOCT_USERS[1]),
            
                .init(
                    id: NSUUID().uuidString,
                    ownerUid: NSUUID().uuidString,
                    caption: "Test Caption 3",
                    likes: 170,
                    imageUrl: "guddi3",
                    timestamp: Date(),
                    user: User.MOCT_USERS[2]),
            
                .init(
                    id: NSUUID().uuidString,
                    ownerUid: NSUUID().uuidString,
                    caption: "Test Caption 4",
                    likes: 470,
                    imageUrl: "guddi4",
                    timestamp: Date(),
                    user: User.MOCT_USERS[0])
    
    ]
}
