//
//  RegViewController.swift
//  chat
//
//  Created by Have Dope on 28.04.2023.
//

import UIKit

class RegViewController: UIViewController {

    var delegate: LoginViewControllerDelegate!
    var tapGest: UIGestureRecognizer?
    
    @IBOutlet var mainvView2: UIView!
    @IBOutlet weak var mainViewBG: UIImageView!
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordFeild: UITextField!
    @IBOutlet weak var rePasswordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var tapGest = UIGestureRecognizer(target: self, action: #selector(TapToMainView))
        
        
    }
    
    @objc func TapToMainView(){
        
        self.view.endEditing(true)
        
    }
    @IBAction func closeVC(_ sender: Any) {
        
        delegate.closeVC()
    }
    
    @IBAction func regBtnClick(_ sender: Any) {
    }
}


