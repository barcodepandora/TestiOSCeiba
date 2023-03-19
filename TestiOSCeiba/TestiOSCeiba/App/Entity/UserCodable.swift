//
//  UserCodable.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

struct UserCodable: Codable{
    var username: String?
    var password: String?
    
    enum CodingKeys: String, CodingKey{
        case username = "username"
        case password = "password"
    }
    
    public init(username: String, password: String) {
        self.username = username
        self.password = password
    }
    
//    func encode(to encoder: Encoder) throws {
//        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encodeIfPresent(username, forKey: .username)
//        try container.encodeIfPresent(password, forKey: .password)
//    }
}
