//
//  UserModel.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

enum User {
    struct Request {
        var id: Int
    }
    
    struct Response {
        var id: Int
        var username: String
        var phone: String
        var email: String
    }
    
    struct ViewModel {
        var id: Int
        var username: String
        var phone: String
        var email: String
    }    
}
