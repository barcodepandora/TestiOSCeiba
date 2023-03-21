//
//  UserViewController.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import UIKit

protocol UserDisplayProtocol: AnyObject {
    func getUser(user: User.ViewModel)
    func displayUser(user: User.ViewModel)
}

class UserViewController: UIViewController, UserDisplayProtocol {
    
    //MARK: Outlet
    @IBOutlet weak var labelName: UILabel!
    
    //MARK: Character
    var interactor: UserInteractor?
    var presenter: UserPresenterProtocol?
    var user: User.ViewModel?
    
    //MARK: init
    convenience init(user: User.ViewModel) {
        self.init()
        self.user = user
    }
    
    //MARK: Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func setup() {
        self.presenter = UserPresenter(vc: self)
        self.interactor = UserInteractor(presenter: self.presenter!)
        self.labelName.text = self.user?.username
    }
    
    //MARK: Business
    func getUser(user: User.ViewModel) {

    }
    
    func displayUser(user: User.ViewModel) {
        
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
