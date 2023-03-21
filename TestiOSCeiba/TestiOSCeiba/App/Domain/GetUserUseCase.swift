//
//  GetUserUseCase.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol GetUserUseCaseProtocol {
    func fetchUser(user: User.Request, completion: @escaping (UserDecodable) -> Void)
}

class GetUserUseCase: GetUserUseCaseProtocol {
    func fetchUser(user: User.Request, completion: @escaping (UserDecodable) -> Void) {
        if APIClient.isAPIAccesible() {
            completion(APIClient.returnUser(user: user)!)
        }
    }
}
