//
//  UserInteractor.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserBusinessLogic {
    func getUser(user: User.Request)
    func getPost(user: User.Request)
}

class UserInteractor: UserBusinessLogic {

    var getUserUseCase: GetUserUseCase?
    var presenter: UserPresenterProtocol!
    var getPostUseCase: GetPostUseCase?
    
    convenience init(presenter: UserPresenterProtocol) {
        self.init()
        self.presenter = presenter
        self.getPostUseCase = GetPostUseCase()
    }
    
    func getUser(user: User.Request) {
    }
    
    func getPost(user: User.Request) {
        self.getPostUseCase?.fetchPost(user: user, completion: { (response) in
            var posts: [Post.Response] = []
            for post in response {
                posts.append(Post.Response(userId: post.userId ?? 1, id: post.id ?? 1, title: post.title ?? "", body: post.body ?? ""))
            }
            self.presenter.presentPost(post: posts)
        })
    }
}
