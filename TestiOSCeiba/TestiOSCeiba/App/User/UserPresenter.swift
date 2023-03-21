//
//  UserPresenter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserPresenterProtocol {
    func presentUser(user: User.Response)
}

class UserPresenter: UserPresenterProtocol {
    
    //MARK: Character
    var vc: UserDisplayProtocol!
    
    //MARK: Init
    convenience init(vc: UserDisplayProtocol) {
        self.init()
        self.vc = vc
    }
    
    //MARK: Business
    func presentUser(user: User.Response) {
        let user = User.ViewModel(id: user.id, username: user.username, phone: user.phone, email: user.email)
        self.vc.displayUser(user: user)
    }
}
