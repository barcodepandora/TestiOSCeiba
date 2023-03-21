//
//  ViewController.swift
//  TestiOSCeiba
//
//  Created by Juan Moreno on 18/03/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    private func enterTestiOS() {
        MainRouter().routeToUser(source: self)
    }
    
    @IBAction func `try`(_ sender: Any) {
        self.enterTestiOS()
    }
    
}

