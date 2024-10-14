//
//  CurrentProfileView.swift
//  InstagramTutorial
//
//  Created by JethroLiu on 2024/9/30.
//

import SwiftUI

struct CurrentProfileView: View {
    let user: User
    
    var posts: [Post] {
        return Post.MOCK_POSTS.filter { $0.user?.username == user.username }
    }

    var body: some View {
        ScrollView(showsIndicators: false) {
            // header
            ProfileHeaderView(user: user)

            // post grid view
            PostGridView(posts: posts)
            
        }
        .navigationTitle(user.username)
        .navigationBarTitleDisplayMode(.inline)
    }
}

#Preview {
    CurrentProfileView(user: User.MOCK_USERS[0])
}
