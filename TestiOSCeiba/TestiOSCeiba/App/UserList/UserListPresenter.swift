//
//  UserListPresenter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation

protocol UserListPresenterProtocol {
    func presentDirectory(directory: Directory.Response)
    func presentUser(user: User.Response)
}

class UserListPresenter: UserListPresenterProtocol {
    var vc: UserListDisplayProtocol!
    
    convenience init(vc: UserListDisplayProtocol) {
        self.init()
        self.vc = vc
    }
    
    func presentDirectory(directory: Directory.Response) {
        let directory = Directory.ViewModel(directory: self.getViewModelFromResponse(directory: directory))
        self.vc.displayDirectory(directory: directory)
    }
    
    func getViewModelFromResponse(directory: Directory.Response) -> [User.ViewModel] {
        var users: [User.ViewModel] = []
        for user in directory.directory {
            users.append(User.ViewModel(id: user.id, name: user.name, username: user.username, phone: user.phone, email: user.email))
        }
        return users
    }
    
    func presentUser(user: User.Response) {
        let user = User.ViewModel(id: user.id, name: user.name, username: user.username, phone: user.phone, email: user.email)
        self.vc.displayUser(user: user)
    }
    
}
