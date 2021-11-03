//
//  LoginView.swift
//  ViewCodeLoginScreenFireBase
//
//  Created by khalil.panahi on 03/11/21.
//

import UIKit

class LoginView: UIView {
    
//    var loginAction: (() -> Void)?
//    var signUpAction: (() -> Void)?

    lazy var backgroundImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "bi")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var emailTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.borderStyle = .none
        view.layer.cornerRadius = 5 //to make curly corner
        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        view.textColor = UIColor(white: 0.9, alpha: 0.8)
        view.font = UIFont.systemFont(ofSize: 17)
        view.autocorrectionType = .no
        view.placeholder = "Email"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var passwordTextField: UITextField = {
        let view = UITextField(frame: .zero)
        view.borderStyle = .none
        view.layer.cornerRadius = 5 //to make curly corner
        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
        view.textColor = UIColor(white: 0.9, alpha: 0.8)
        view.font = UIFont.systemFont(ofSize: 17)
        view.autocorrectionType = .no
        view.placeholder = "Password"
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var loginButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Login", for: .normal)
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1).cgColor
//        view.addTarget(self, action: #selector(loginHandler), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var signUpButton: UIButton = {
        let view = UIButton(frame: .zero)
        view.setTitle("Sign Up", for: .normal)
        view.layer.cornerRadius = 5
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(red: 80/255, green: 227/255, blue: 194/255, alpha: 1).cgColor
//        view.addTarget(self, action: #selector(signUpHandler), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    lazy var mainContainer: UIStackView = {
        let view = UIStackView(frame: .zero)
        view.axis = .vertical
        view.distribution = .fillEqually
        view.spacing = 10
//        view.alignment = .fill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//    @objc func loginHandler() {
//        loginAction?()
//    }
//
//    @objc func signUpHandler() {
//        signUpAction?()
//    }
    
}

extension LoginView: CodeView {
    func buildView() {
        addSubview(backgroundImage)
        addSubview(emailTextField)
        
        mainContainer.addArrangedSubview(emailTextField)
        mainContainer.addArrangedSubview(passwordTextField)
        mainContainer.addArrangedSubview(loginButton)
        mainContainer.addArrangedSubview(signUpButton)
        addSubview(mainContainer)

    }
    
    func setupConstraints() {
        
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
        mainContainer.centerXAnchor.constraint(equalTo: self.centerXAnchor).isActive = true
        mainContainer.centerYAnchor.constraint(equalTo: self.centerYAnchor, constant: -100).isActive = true
        
        mainContainer.widthAnchor.constraint(equalTo: self.widthAnchor, multiplier: 0.7).isActive = true
        mainContainer.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.2).isActive = true
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
