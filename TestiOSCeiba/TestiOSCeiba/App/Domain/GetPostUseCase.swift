//
//  GetPostUseCase.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation

protocol GetPostUseCaseProtocol {
    func fetchPost(user: User.Request, completion: @escaping ([PostDecodable]) -> Void)
}

class GetPostUseCase: GetPostUseCaseProtocol {
    func fetchPost(user: User.Request, completion: @escaping ([PostDecodable]) -> Void) {
        if APIClient.isAPIAccesible() {
            completion(APIClient.returnPost(user: user))
        }
    }
}
