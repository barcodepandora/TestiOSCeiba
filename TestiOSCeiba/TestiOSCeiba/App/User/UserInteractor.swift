//
//  UserInteractor.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol UserBusinessLogic {
    func getUser(user: User.Request)
}

class UserInteractor: UserBusinessLogic {
    var presenter: UserPresenterProtocol!
    
    convenience init(presenter: UserPresenterProtocol) {
        self.init()
        self.presenter = presenter
    }
    
    var getUserUseCase: GetUserUseCase?
    
    func getUser(user: User.Request) {
    }
}
