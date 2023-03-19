//
//  UserInteractor.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserBusinessLogic {
    func getDirectory()
    func getUser(user: User.Request)
}

class UserInteractor: UserBusinessLogic {
    var presenter: UserPresenterProtocol!
    
    convenience init(presenter: UserPresenterProtocol) {
        self.init()
        self.presenter = presenter
    }
    
    var getDirectoryUseCase: GetDirectoryUseCase?
    var getUserUseCase: GetUserUseCase?
    
    func getDirectory() {
        getDirectoryUseCase?.fetchDirectory()
        let directory = Directory.Response(directory: [])
        self.presenter.presentDirectory(directory: directory)
    }
    
    func getUser(user: User.Request) {
        getUserUseCase?.fetchUser(user: user)
        let user = User.Response(username: user.username)
        self.presenter.presentUser(user: user)
    }
}
