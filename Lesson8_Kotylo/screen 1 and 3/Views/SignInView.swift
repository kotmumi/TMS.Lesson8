//
//  SignInView.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 26.03.25.
//
import UIKit

class SignInView: UIView {
    
    // MARK: -signInLabel
    
    private let signInLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        label.textAlignment = .center
        label.font = .systemFont(ofSize: 16, weight: .medium)
        label.text = "Sign In"
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
    
    //MARK: -signInButton
    private let signInButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .accent
        button.setTitle("Sign in", for: .normal)
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
        addSubview(signInLabel)
        addSubview(loginTextField)
        addSubview(passwordTextField)
        addSubview(signInButton)
    }
    
    //MARK: - setConstraints
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            signInLabel.topAnchor.constraint(equalTo: topAnchor, constant: 16),
            signInLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            signInLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            loginTextField.topAnchor.constraint(equalTo: signInLabel.bottomAnchor, constant: 16),
            loginTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            loginTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            passwordTextField.topAnchor.constraint(equalTo: loginTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            passwordTextField.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            
            signInButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            signInButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 32),
            signInButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -32),
            signInButton.heightAnchor.constraint(equalToConstant: 32),
        
        ])
    }
}
