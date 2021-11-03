//
//  LoginView.swift
//  ViewCodeLoginScreenFireBase
//
//  Created by khalil.panahi on 03/11/21.
//

import UIKit

class LoginView: UIView {
    
    lazy var backgroundImage: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.image = UIImage(named: "bi")
        view.contentMode = .scaleAspectFill
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
//    lazy var emailTextField: UITextField = {
//        let view = UITextField(frame: .zero)
//        view.borderStyle = .none
//        view.layer.cornerRadius = 5 //to make curly corner
//        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
//        view.textColor = UIColor(white: 0.9, alpha: 0.8)
//        view.font = UIFont.systemFont(ofSize: 17)
//        view.autocorrectionType = .no
//        view.placeholder = "Email"
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
//    
//    lazy var passwordTextField: UITextField = {
//        let view = UITextField(frame: .zero)
//        view.borderStyle = .none
//        view.layer.cornerRadius = 5 //to make curly corner
//        view.backgroundColor = UIColor(red: 216/255, green: 216/255, blue: 216/255, alpha: 0.2)
//        view.textColor = UIColor(white: 0.9, alpha: 0.8)
//        view.font = UIFont.systemFont(ofSize: 17)
//        view.autocorrectionType = .no
//        view.placeholder = "Password"
//        view.translatesAutoresizingMaskIntoConstraints = false
//        return view
//    }()
    
    override init(frame: CGRect = .zero) {
        super.init(frame: frame)
        
        setupView()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension LoginView: CodeView {
    func buildView() {
        addSubview(backgroundImage)
//        addSubview(emailTextField)
//        addSubview(passwordTextField)
    }
    
    func setupConstraints() {
        
        backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor).isActive = true
        backgroundImage.topAnchor.constraint(equalTo: topAnchor).isActive = true
        backgroundImage.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        
//        emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 15).isActive = true
//        emailTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
//        emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
//        emailTextField.bottomAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
        
//        passwordTextField.leadingAnchor.constraint(
//        passwordTextField.topAnchor.constraint(equalTo: topAnchor, constant: 50).isActive = true
//        passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
//        passwordTextField.bottomAnchor.constraint(equalTo: topAnchor, constant: 100).isActive = true
    }
    
    func setupAddicionalConfiguration() {
        
    }
    
    
}
