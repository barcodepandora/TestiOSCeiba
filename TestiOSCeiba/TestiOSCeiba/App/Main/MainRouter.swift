//
//  MainRouter.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation

protocol MainRouterProtocol {
    func routeToUser()
}

class MainRouter: MainRouterProtocol {
    func routeToUser() {
        navigateToUser(destination: UserViewController())

    }
    
    // MARK: Navigation
    func navigateToUser(destination: UserDisplayProtocol) {
    }
}
