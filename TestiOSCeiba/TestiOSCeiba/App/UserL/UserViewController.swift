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
    func displayPost(post: [Post.ViewModel])
}

class UserViewController: UIViewController, UserDisplayProtocol {
    @IBOutlet weak var labelName: UILabel!
    @IBOutlet weak var labelUsername: UILabel!
    @IBOutlet weak var labelPhone: UILabel!
    @IBOutlet weak var labelEmail: UILabel!
    @IBOutlet weak var tablePost : UITableView!
    
    var interactor: UserInteractor?
    var presenter: UserPresenterProtocol?
    var user: User.ViewModel?
    let identifier = "PostTableViewCell"
    var posts: [Post.ViewModel]?
    
    convenience init(user: User.ViewModel) {
        self.init()
        self.user = user
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.setup()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.interactor?.getPost(user: User.Request(id: self.user!.id))
    }
    
    func setup() {
        self.presenter = UserPresenter(vc: self)
        self.interactor = UserInteractor(presenter: self.presenter!)
        self.labelName.text = self.user?.name
        self.labelUsername.text = self.user?.username
        self.labelPhone.text = self.user?.phone
        self.labelEmail.text = self.user?.email
        self.setupTableView()
    }
    
    func setupTableView() {
        tablePost.delegate = self
        tablePost.dataSource = self
        tablePost.register(UINib(nibName: self.identifier, bundle: nil), forCellReuseIdentifier: self.identifier)
    }
    
    func getUser(user: User.ViewModel) {

    }
    
    func displayUser(user: User.ViewModel) {
        
    }

    func displayPost(post: [Post.ViewModel]) {
        self.posts = post
        self.tablePost.reloadData()
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

extension UserViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if self.posts == nil { return 0 } else {
            return (self.posts?.count)!
        }
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 152
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = posts![indexPath.row]

        let cell = tableView.dequeueReusableCell(withIdentifier: self.identifier, for: indexPath) as! PostTableViewCell
        cell.labelTitle.text = post.title
        cell.labelBody.text = post.body
        return cell
    }
}

extension UserViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
}
