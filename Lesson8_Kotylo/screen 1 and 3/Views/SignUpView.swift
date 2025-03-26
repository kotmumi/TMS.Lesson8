//
//  SignUpView.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 26.03.25.
//

import UIKit

class SignUpView: UIView {
    
    // MARK: -signUpLabel
    
    private let signUpLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.text = "Sign Up"
        return label
    }()
    
    // MARK: -loginTextField
    
    private let loginTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "login"
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = #colorLiteral(red: 0.9841352105, green: 0.9841352105, blue: 0.9841352105, alpha: 1)
        textField.borderStyle = .roundedRect
        textField.leftView = UIImageView(image: UIImage(systemName: "person"))
        textField.leftViewMode = .always
        return textField
    }()
    
    // MARK: -passwordTextField
    
    private let passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "password"
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = #colorLiteral(red: 0.9841352105, green: 0.9841352105, blue: 0.9841352105, alpha: 1)
        textField.borderStyle = .roundedRect
        textField.rightView = UIImageView(image: UIImage(systemName: "eye.slash"))
        textField.rightViewMode = .always
        textField.leftView = UIImageView(image: UIImage(systemName: "lock"))
        textField.leftViewMode = .always
        textField.isSecureTextEntry = true
        return textField
    }()
    
    // MARK: -passwordConfirmTextField
    
    private let passwordСonfirmTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "Confirm password"
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = #colorLiteral(red: 0.9841352105, green: 0.9841352105, blue: 0.9841352105, alpha: 1)
        textField.borderStyle = .roundedRect
        textField.rightView = UIImageView(image: UIImage(systemName: "eye.slash"))
        textField.rightViewMode = .always
        textField.leftView = UIImageView(image: UIImage(systemName: "lock"))
        textField.leftViewMode = .always
        textField.isSecureTextEntry = true
        return textField
    }()
    
    //MARK: -emailTextField
    
    private var emailTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "email"
        textField.font = .systemFont(ofSize: 12)
        textField.backgroundColor = #colorLiteral(red: 0.9841352105, green: 0.9841352105, blue: 0.9841352105, alpha: 1)
        textField.borderStyle = .roundedRect
        textField.leftView = UIImageView(image: UIImage(systemName: "envelope"))
        textField.leftViewMode = .always
        return textField
    }()
    
    //MARK: -signUpButton
    private let signUpButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .accent
        button.setTitle("Sign up", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.tintColor = .black
        button.layer.cornerRadius = 8
        //button.addTarget(self,
          //                           action: #selector(goToSecondController(_:)),
            //                         for: .touchUpInside)
        return button
    }()
    
   //MARK: -init
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.layer.cornerRadius = 16
        setupView()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK: -setupView
    
    func setupView() {
        translatesAutoresizingMaskIntoConstraints = false
        addSubview(signUpLabel)
        addSubview(loginTextField)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(passwordСonfirmTextField)
        addSubview(signUpButton)
        
    }
    
    //MARK: - setConstraints
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            signUpLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            signUpLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            signUpLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            loginTextField.topAnchor.constraint(equalTo: signUpLabel.bottomAnchor, constant: 16),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            emailTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 16),
            emailTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            emailTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            passwordСonfirmTextField.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            passwordСonfirmTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            passwordСonfirmTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            signUpButton.topAnchor.constraint(equalTo: passwordСonfirmTextField.bottomAnchor, constant: 16),
            signUpButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            signUpButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            signUpButton.heightAnchor.constraint(equalToConstant: 32),
            
        ])
    }
}
