//
//  UserModel.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

enum User {
    struct Request {
        var username: String
    }
    
    struct Response {
        var username: String
    }
    
    struct ViewModel {
        var username: String
    }    
}
