//
//  UserViewController.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import Foundation
import UIKit

protocol UserDisplayProtocol: AnyObject {
    func displayDirectory(directory: Directory.ViewModel)
    func getUser(user: User.ViewModel)
    func displayUser(user: User.ViewModel)
}

class UserViewController: UIViewController, UserDisplayProtocol {
    var interactor: UserInteractor?
    var presenter: UserPresenterProtocol?
    
    func prepare() {
        self.presenter = UserPresenter(vc: self)
        self.interactor = UserInteractor(presenter: self.presenter!)
    }
    
    func displayDirectory(directory: Directory.ViewModel) {
        
    }
    
    func getUser(user: User.ViewModel) {
        let user = User.Request(username: user.username)
        self.interactor?.getUser(user: user)
    }
    
    func displayUser(user: User.ViewModel) {
        
    }
}
