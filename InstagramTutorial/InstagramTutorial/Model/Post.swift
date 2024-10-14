//
//  Post.swift
//  InstagramTutorial
//
//  Created by JethroLiu on 2024/9/30.
//

import Foundation

struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let timestamp: Date
    var user: User?
}

extension Post {
    static var MOCK_POSTS: [Post] = [
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "This is some test caption for now",
            likes: 123,
            imageUrl: "batman-2",
            timestamp: Date(),
            user: User.MOCK_USERS[0]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Wakanda Forever",
            likes: 104,
            imageUrl: "black-panther-1",
            timestamp: Date(),
            user: User.MOCK_USERS[3]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "TIton Man",
            likes: 12,
            imageUrl: "ironman-1",
            timestamp: Date(),
            user: User.MOCK_USERS[2]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "Venom is hungry. Time to eat",
            likes: 314,
            imageUrl: "venom-1",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
        .init(
            id: UUID().uuidString,
            ownerUid: UUID().uuidString,
            caption: "This is some test caption for now",
            likes: 76,
            imageUrl: "venom-2",
            timestamp: Date(),
            user: User.MOCK_USERS[1]
        ),
    ]
}
