//
//  Post.swift
//  InstagramClone
//
//  Created by Shaurya Singh on 08/06/24.
//

import Foundation


// hasgable :req in navigation
// Identifiable req in for loop as Swiftui have to diff each item
// Codable: while API data extraction
struct Post: Identifiable, Codable, Hashable{
    let id: String
    let ownerId: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timeStamp: Date
    var user: User

}

extension Post{
    
    static var POST_MOCKS: [Post] = [
        .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption:"shaurya first uplaod",  likes: 123, imageUrl: "shaurya1", timeStamp: Date(), user: User.MOCK_USERS[0]),
        
            .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption:"guddi first uplaod", likes: 103, imageUrl: "guddi1", timeStamp: Date(), user: User.MOCK_USERS[2]),
        
            .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption:"vibhu first uplaod" , likes: 193, imageUrl: "vibhu1", timeStamp: Date(), user: User.MOCK_USERS[1]),
        
            .init(id: NSUUID().uuidString, ownerId: NSUUID().uuidString, caption:"shaurya second uplaod" , likes: 223, imageUrl: "shaurya2", timeStamp: Date(), user: User.MOCK_USERS[0])
    ]
}
