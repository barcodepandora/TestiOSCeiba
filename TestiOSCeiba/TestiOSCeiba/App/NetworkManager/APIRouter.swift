//
//  APIRouter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 19/03/23.
//

import Foundation
import Alamofire

enum APIRouter: URLRequestConvertible {
    case returnDirectory
    
    // MARK: - URL
    private var path: String {
        switch self {
        case .returnDirectory:
            return "https://jsonplaceholder.typicode.com/"
        }
    }

    // MARK: - HTTPMethod
    private var method: HTTPMethod {
        switch self {
        case .returnDirectory:
            return .get
        }
    }
    
    // MARK: - URLRequestConvertible
    func asURLRequest() throws -> URLRequest {
        let url = URL(string: path)
        return URLRequest(url: url!)
    }
}
