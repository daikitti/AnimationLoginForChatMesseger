//
//  AuthViewController.swift
//  chat
//
//  Created by Have Dope on 28.04.2023.
//

import UIKit

class AuthViewController: UIViewController {

    var delegate: LoginViewControllerDelegate!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func closeVC(_ sender: Any) {
        
        delegate.closeVC()
    }
    
}
