//
//  UserListInteractor.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation

protocol UserListBusinessLogic {
    func getDirectory()
    func getUser(user: User.Request)
}

class UserListInteractor: UserListBusinessLogic {
    
    //MARK: Character
    var presenter: UserListPresenterProtocol!
    var getDirectoryUseCase: GetDirectoryUseCase?
    var getUserUseCase: GetUserUseCase?
    
    //MARK: init
    convenience init(presenter: UserListPresenterProtocol) {
        self.init()
        self.getDirectoryUseCase = GetDirectoryUseCase()
        self.getUserUseCase = GetUserUseCase()
        self.presenter = presenter
    }
    
    //MARK: Business
    func getDirectory() {
        getDirectoryUseCase?.fetchDirectory(completion: { (response) in
            var users: [User.Response] = []
            for user in response {
                users.append(User.Response(id: user.id ?? 1, username: user.username ?? "", phone: user.phone ?? "", email: user.email ?? ""))
            }
            let directory = Directory.Response(directory: users)
            self.presenter.presentDirectory(directory: directory)
        })
    }
    
    func getUser(user: User.Request) {
        self.getUserUseCase?.fetchUser(user: user, completion: { (response) in
            self.presenter.presentUser(user: User.Response(id: response.id ?? 1, username: response.username ?? "", phone: response.phone ?? "", email: response.email ?? ""))        })
    }
}
