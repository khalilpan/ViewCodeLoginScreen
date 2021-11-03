//
//  ViewController.swift
//  ViewCodeLoginScreenFireBase
//
//  Created by khalil.panahi on 03/11/21.
//

import UIKit

class LoginController: UIViewController {
    let loginScreen = LoginView()

    override func loadView() {
        
//        loginScreen.loginAction = loginPressed
//        loginScreen.signUpAction = signUpPressed
        view = loginScreen
        
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
//        navigationController?.navigationBar.isHidden = false
    }
    
    //handle button presses
//    func loginPressed() {
//        print("Login Button Clicked.")
//    }
//    
//    func signUpPressed() {
//        print("Sign Up Button Clicked.")
//    }
}
