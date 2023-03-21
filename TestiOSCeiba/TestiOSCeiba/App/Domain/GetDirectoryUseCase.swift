//
//  GetDirectoryUseCase.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation
import Alamofire

protocol GetDirectoryUseCaseProtocol {
    func fetchDirectory(completion: @escaping ([UserDecodable]) -> Void)
}

class GetDirectoryUseCase: GetDirectoryUseCaseProtocol {
    func fetchDirectory(completion: @escaping ([UserDecodable]) -> Void) {
        if APIClient.isAPIAccesible() {
            
//            APIClient.returnAfterDecode()
            
//            APIClient.returnDirectory(completion: { response in
//                completion(self.returnDirectory(response: response))
//            })
            
            completion(APIClient.returnDirectoryMock())
        }
    }
    
    private func returnDirectory(response: AFDataResponse<[UserDecodable]>) -> [UserDecodable] {
        let jsonData = response.data! //Data(response.data!) //data(using: .utf8) else { return [] }
        do {
            let decodables = try JSONDecoder().decode([UserDecodable].self, from: jsonData)
            print(decodables)
            return decodables
        } catch {
            print (error)
            return []
        }
    }


}
