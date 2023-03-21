//
//  MainRouter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation
import UIKit

protocol MainRouterProtocol {
    func routeToUser(source: UIViewController)
}

class MainRouter: MainRouterProtocol {
    
    func routeToUser(source: UIViewController) {
        navigateToUser(source: source, destination: UserViewController())

    }
    
    // MARK: Navigation
    func navigateToUser(source: UIViewController, destination: UserDisplayProtocol) {
        source.show(UserListViewController(), sender: self)
    }
}
