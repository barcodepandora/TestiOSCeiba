//
//  UserPresenter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserPresenterProtocol {
    func presentDirectory(directory: Directory.Response)
    func presentUser(user: User.Response)
}

class UserPresenter: UserPresenterProtocol {
    var vc: UserDisplayProtocol!
    
    convenience init(vc: UserDisplayProtocol) {
        self.init()
        self.vc = vc
    }
    
    func presentDirectory(directory: Directory.Response) {
        let directory = Directory.ViewModel(directory: self.getDirectoryViewModelFromResponse(directory: directory))
        self.vc.displayDirectory(directory: directory)
    }
    
    func getDirectoryViewModelFromResponse(directory: Directory.Response) -> [User.ViewModel] {
        var d: [User.ViewModel] = []
        for user in directory.directory {
            d.append(User.ViewModel(username: user.username))
        }
        return d
    }
    
    func presentUser(user: User.Response) {
        let user = User.ViewModel(username: user.username)
        self.vc.displayUser(user: user)
    }
}
