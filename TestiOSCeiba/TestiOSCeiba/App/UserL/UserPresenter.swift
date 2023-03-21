//
//  UserPresenter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserPresenterProtocol {
    func presentUser(user: User.Response)
    func presentPost(post: [Post.Response])
}

class UserPresenter: UserPresenterProtocol {
    var vc: UserDisplayProtocol!
    
    convenience init(vc: UserDisplayProtocol) {
        self.init()
        self.vc = vc
    }
    
    func presentUser(user: User.Response) {
        let user = User.ViewModel(id: user.id, name: user.name, username: user.username, phone: user.phone, email: user.email)
        self.vc.displayUser(user: user)
    }
    
    func presentPost(post: [Post.Response]) {
        let posts = self.getPostViewModelFromResponse(postResponse: post)
        self.vc.displayPost(post: posts)
    }
    
    func getPostViewModelFromResponse(postResponse: [Post.Response]) -> [Post.ViewModel] {
        var posts: [Post.ViewModel] = []
        for post in postResponse {
            posts.append(Post.ViewModel(userId: post.userId, id: post.id, title: post.title, body: post.body))
        }
        return posts
    }
}
