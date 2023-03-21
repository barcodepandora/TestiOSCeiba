//
//  UserListRouter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation
import UIKit

protocol UserListRouterProtocol {
    func routeToUser(source: UIViewController, user: User.ViewModel)
}

class UserListRouter: UserListRouterProtocol {
    
    func routeToUser(source: UIViewController, user: User.ViewModel) {
        navigateToUser(source: source, destination: UserViewController(user: user))
    }
    
    // MARK: Navigation
    func navigateToUser(source: UIViewController, destination: UserViewController) {
        source.show(destination, sender: self)
    }
}
