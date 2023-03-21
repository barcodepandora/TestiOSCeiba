//
//  DirectoryCodable.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 19/03/23.
//

import Foundation

class DirectoryDecodable: Decodable{
    var data: [UserDecodable]?
    
    enum CodingKeys: String, CodingKey{
        case data = "directory"
    }
    
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.data = try? container.decode([UserDecodable].self, forKey: .data)
    }

    public init(data: [UserDecodable]) {
        self.data = data
    }
}
