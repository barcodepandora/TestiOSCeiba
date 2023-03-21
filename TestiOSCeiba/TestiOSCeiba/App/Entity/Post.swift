//
//  Post.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation

enum Post {
    struct Response {
        var userId: Int
        var id: Int
        var title: String
        var body: String
    }
    
    struct ViewModel {
        var userId: Int
        var id: Int
        var title: String
        var body: String
    }
}
