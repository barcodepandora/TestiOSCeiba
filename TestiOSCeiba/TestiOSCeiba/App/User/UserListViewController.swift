//
//  UserListViewController.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 20/03/23.
//

import Foundation
import UIKit

protocol UserListDisplayProtocol: AnyObject {
    func getDirectory()
    func displayDirectory(directory: Directory.ViewModel)
    func displayUser(user: User.ViewModel)
}

class UserListViewController: UIViewController, UserListDisplayProtocol {
    
    @IBOutlet weak var tableUser : UITableView!
    @IBOutlet weak var autocomplete: UITextField!
    
    var interactor: UserListInteractor?
    var presenter: UserListPresenterProtocol?
    let identifier = "UserTableViewCell"
    var directory: Directory.ViewModel?
    var filtered: Directory.ViewModel?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    func setup() {
        self.presenter = UserListPresenter(vc: self)
        self.interactor = UserListInteractor(presenter: self.presenter!)
        self.autocomplete.addTarget(self, action: #selector(textFieldDidChange(_:)), for: .editingChanged)
        self.setupTableView()
        self.getDirectory()
    }
    
    func setupTableView() {
        tableUser.delegate = self
        tableUser.dataSource = self
        tableUser.register(UINib(nibName: self.identifier, bundle: nil), forCellReuseIdentifier: self.identifier)
    }
    
    func getDirectory() {
        self.interactor?.getDirectory()
    }
    
    func displayDirectory(directory: Directory.ViewModel) {
        self.directory = directory
        self.filtered = self.directory
        self.tableUser.reloadData()
    }
    
    func displayUser(user: User.ViewModel) {
        UserListRouter().routeToUser(source: self, user: user)
    }
    
    @objc func textFieldDidChange(_ textField: UITextField) {
        self.filtered?.directory = self.directory!.directory
        if textField.text?.count == 0 {
            self.tableUser.reloadData()
        } else {
            self.filtered?.directory = self.directory!.directory.filter { $0.username.localizedCaseInsensitiveContains(textField.text!) }
        }
        self.tableUser.reloadData()
    }
}

extension UserListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (self.filtered?.directory.count)!
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let user = filtered?.directory[indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath) as! UserTableViewCell
        cell.labelUserName.text = user?.username
        return cell
    }
}

extension UserListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let request = User.Request(id: (self.filtered?.directory[indexPath.row].id)!)
        self.interactor?.getUser(user: request)
    }
}
