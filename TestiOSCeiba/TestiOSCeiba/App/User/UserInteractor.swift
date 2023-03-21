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
    
    //MARK: Character
    var presenter: UserPresenterProtocol!
    var getUserUseCase: GetUserUseCase?
    
    //MARK: init
    convenience init(presenter: UserPresenterProtocol) {
        self.init()
        self.presenter = presenter
    }
    
    //MARK: Business
    func getUser(user: User.Request) {
    }
}
