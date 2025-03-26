//
//  ViewController.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 18.03.25.
//

import UIKit
import SnapKit
import SwiftUI

class ViewController: UIViewController {
    
    private var segmentView = UISegmentedControl(items: ["Sign in", "Sign Up"])
    private var stackView = UIStackView()
    private var scrollView = UIScrollView()
    private var containerStackView = UIView()
    private var labelUILabel = UILabel()
    private var nextScreenUIButton = UIButton(type: .system)
    
    // MARK: -View element signIn
    private var signInContainerView = UIView()
    private var loginTextField = UITextField()
    private var passwordTextField = UITextField()
    private var signInLabel = UILabel()
    private var signInButton = UIButton(type: .system)
    
    // MARK: -View element signUp
    private var signUpContainerView = UIView()
    private var loginUpTextField = UITextField()
    private var emailTextField = UITextField()
    private var passwordUpTextField = UITextField()
    private var passwordReapeatTextField = UITextField()
    private var signUpLabel = UILabel()
    private var signUpButton = UIButton(type: .system)
    
    // MARK: -UIImage
    private var logoImageView = UIImageView(image: .TMS)
    private var iosImageView = UIImageView(image: .iOS)
    private var pytonImageView = UIImageView(image: .PYTON)
    private var netImageView = UIImageView(image: .NET)
    private var webImageView = UIImageView(image: .WEB)
    private var goImageView = UIImageView(image: .GO)
    private var uiuxImageView = UIImageView(image: .UIUX)
    private var oneCImageView = UIImageView(image: .oneC)
    private var qaImageView = UIImageView(image: .QA)
    private var eyeImageView = UIImageView(image: UIImage(systemName: "eye.slash"))
    private var loginImageView = UIImageView(image: UIImage(systemName: "person"))
    private var lockImageView = UIImageView(image: UIImage(systemName: "lock"))
    private var loginTwoImageView = UIImageView(image: UIImage(systemName: "person"))
    private var lockTwoImageView = UIImageView(image: UIImage(systemName: "lock"))
    private var eyeTwoImageView = UIImageView(image: UIImage(systemName: "eye.slash"))
    private var lockThreeImageView = UIImageView(image: UIImage(systemName: "lock"))
    private var eyeThreeImageView = UIImageView(image: UIImage(systemName: "eye.slash"))
    private var emailImageView = UIImageView(image: UIImage(systemName: "envelope"))
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        // MARK: -segmentView
        self.view.addSubview(segmentView)
        segmentView.selectedSegmentIndex = 0
        segmentView.selectedSegmentTintColor = .accent
        segmentView.addTarget(self,
                              action: #selector(segmentValueChanged(_:)),
                              for: .valueChanged)
        segmentView.snp.makeConstraints { make in
            make.top.equalTo(self.view.safeAreaLayoutGuide.snp.top).offset(16)
            make.trailing.equalToSuperview().offset(-32)
        }
        
        // MARK: -logoImageView
        view.addSubview(logoImageView)
        logoImageView.contentMode = .scaleAspectFit
        logoImageView.snp.makeConstraints { make in
            make.height.equalTo(128)
            make.top.equalTo(segmentView.snp.bottom).offset(64)
            make.trailing.equalToSuperview().offset(-16)
            make.leading.equalToSuperview().offset(16)
        }
        
        // MARK: -labelUILabel
        view.addSubview(labelUILabel)
        labelUILabel.textColor = .windowsText
        labelUILabel.font = .systemFont(ofSize: 8, weight: .light)
        labelUILabel.text = "Актуальные знания для новичков и практикующих специалистов"
        labelUILabel.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(-32)
            make.centerX.equalToSuperview()
        }
        
        // MARK: -scrollView
        qaImageView.contentMode = .scaleAspectFit
        qaImageView.frame.size = CGSize(width: 64, height: 64)
        
        iosImageView.contentMode = .scaleAspectFit
        iosImageView.frame.size = CGSize(width: 64, height: 64)
        
        oneCImageView.contentMode = .scaleAspectFit
        oneCImageView.frame.size = CGSize(width: 64, height: 64)
        
        pytonImageView.contentMode = .scaleAspectFit
        pytonImageView.frame.size = CGSize(width: 64, height: 64)
        
        webImageView.contentMode = .scaleAspectFit
        webImageView.frame.size = CGSize(width: 64, height: 64)
        
        netImageView.contentMode = .scaleAspectFit
        netImageView.frame.size = CGSize(width: 64, height: 64)
        
        uiuxImageView.contentMode = .scaleAspectFit
        uiuxImageView.frame.size = CGSize(width: 64, height: 64)
        
        goImageView.contentMode = .scaleAspectFit
        goImageView.frame.size = CGSize(width: 64, height: 64)
        
        view.addSubview(scrollView)
        scrollView.bouncesHorizontally = true
        scrollView.isScrollEnabled = true
        scrollView.showsHorizontalScrollIndicator = false
        scrollView.contentSize = CGSize(width: 64 * 9, height: 64)
        scrollView.snp.makeConstraints { make in
            make.height.equalTo(64)
            make.bottom.equalTo(self.view.safeAreaLayoutGuide.snp.bottom).offset(-96)
            make.trailing.equalToSuperview().offset(-16)
            make.leading.equalToSuperview().offset(16)
        }
        
        scrollView.addSubview(containerStackView)
        containerStackView.snp.makeConstraints { make in
            make.height.equalTo(scrollView.snp.height)
            make.width.equalTo(scrollView.snp.width).offset(200)
            //make.center.equalTo(scrollView.snp.center)
            make.leading.equalTo(scrollView.snp.leading)
        }
        
        containerStackView.addSubview(stackView)
        stackView.insertArrangedSubview(qaImageView, at: 0)
        stackView.insertArrangedSubview(iosImageView, at: 1)
        stackView.insertArrangedSubview(oneCImageView, at: 2)
        stackView.insertArrangedSubview(pytonImageView, at: 3)
        stackView.insertArrangedSubview(webImageView, at: 4)
        stackView.insertArrangedSubview(netImageView, at: 5)
        stackView.insertArrangedSubview(uiuxImageView, at: 6)
        stackView.insertArrangedSubview(goImageView, at: 7)
        stackView.spacing = 0
        stackView.axis = .horizontal
        stackView.distribution = .fillEqually
        stackView.snp.makeConstraints { make in
            make.top.equalTo(containerStackView.snp.top)
            make.bottom.equalTo(containerStackView.snp.bottom)
            make.trailing.equalTo(containerStackView.snp.trailing)
            make.leading.equalTo(containerStackView.snp.leading)
            make.width.equalTo(containerStackView.snp.width)
        }
        
        // MARK: -signInContainerView
        self.view.addSubview(signInContainerView)
        signInContainerView.layer.cornerRadius = 16
        signInContainerView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(32)
            make.leading.equalToSuperview().offset(32)
            make.trailing.equalToSuperview().offset(-32)
        }
        
        // MARK: -signInLabel
        signInContainerView.addSubview(signInLabel)
        signInLabel.text = "Sign In"
        signInLabel.font = .systemFont(ofSize: 16, weight: .medium)
        signInLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        signInLabel.textAlignment = .center
        signInLabel.snp.makeConstraints { make in
            make.top.equalTo(signInContainerView.snp.top).offset(16)
            make.trailing.equalTo(signInContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signInContainerView.snp.leading).offset(32)
        }
        
        // MARK: -loginTextField
        signInContainerView.addSubview(loginTextField)
        loginTextField.placeholder = "login"
        loginTextField.font = .systemFont(ofSize: 12)
        loginTextField.borderStyle = .roundedRect
        loginTextField.leftView = loginImageView
        loginTextField.leftViewMode = .always
        loginTextField.snp.makeConstraints { make in
            make.top.equalTo(signInLabel.snp.bottom).offset(16)
            make.trailing.equalTo(signInContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signInContainerView.snp.leading).offset(32)
        }
        
        // MARK: -passwordTextField
        signInContainerView.addSubview(passwordTextField)
        passwordTextField.backgroundColor = .white
        passwordTextField.placeholder = "password"
        passwordTextField.font = .systemFont(ofSize: 12)
        passwordTextField.borderStyle = .roundedRect
        passwordTextField.isSecureTextEntry = true
        passwordTextField.rightView = eyeImageView
        passwordTextField.rightViewMode = .always
        passwordTextField.leftView = lockImageView
        passwordTextField.leftViewMode = .always
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(loginTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signInContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signInContainerView.snp.leading).offset(32)
        }
        
        // MARK: -signInButton
        signInContainerView.addSubview(signInButton)
        signInButton.backgroundColor = .accent
        signInButton.setTitle("Sign in", for: .normal)
        signInButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        signInButton.tintColor = .black
        signInButton.layer.cornerRadius = 8
        signInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signInContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signInContainerView.snp.leading).offset(32)
            make.height.equalTo(32)
        }
        
        // MARK: - signUpContainerView
        self.view.addSubview(signUpContainerView)
        signUpContainerView.isHidden = true
        signUpContainerView.layer.cornerRadius = 16
        signUpContainerView.snp.makeConstraints { make in
            make.top.equalTo(logoImageView.snp.bottom).offset(32)
            make.leading.equalToSuperview().offset(32)
            make.trailing.equalToSuperview().offset(-32)
        }
        
        // MARK: -signUpLabel
        signUpContainerView.addSubview(signUpLabel)
        signUpLabel.text = "Sign Up"
        signUpLabel.font = .systemFont(ofSize: 16, weight: .medium)
        signUpLabel.textColor = .black
        signUpLabel.textAlignment = .center
        signUpLabel.snp.makeConstraints { make in
            make.top.equalTo(signUpContainerView.snp.top).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
        }
        
        // MARK: -loginUpTextField
        signUpContainerView.addSubview(loginUpTextField)
        loginUpTextField.backgroundColor = .white
        loginUpTextField.placeholder = "login"
        loginUpTextField.font = .systemFont(ofSize: 12)
        loginUpTextField.borderStyle = .roundedRect
        loginUpTextField.leftView = loginTwoImageView
        loginUpTextField.leftViewMode = .always
        loginUpTextField.snp.makeConstraints { make in
            make.top.equalTo(signUpLabel.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
        }
        
        // MARK: -emailTextField
        signUpContainerView.addSubview(emailTextField)
        emailTextField.backgroundColor = .white
        emailTextField.placeholder = "email"
        emailTextField.font = .systemFont(ofSize: 12)
        emailTextField.borderStyle = .roundedRect
        emailTextField.leftView = emailImageView
        emailTextField.leftViewMode = .always
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(loginUpTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
        }
        
        // MARK: -passwordUpTextField
        signUpContainerView.addSubview(passwordUpTextField)
        passwordUpTextField.backgroundColor = .white
        passwordUpTextField.placeholder = "password"
        passwordUpTextField.font = .systemFont(ofSize: 12)
        passwordUpTextField.borderStyle = .roundedRect
        passwordUpTextField.isSecureTextEntry = true
        passwordUpTextField.rightView = eyeThreeImageView
        passwordUpTextField.rightViewMode = .always
        passwordUpTextField.leftView = lockThreeImageView
        passwordUpTextField.leftViewMode = .always
        passwordUpTextField.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
        }
        
        // MARK: -passwordReapetTextField
        signUpContainerView.addSubview(passwordReapeatTextField)
        passwordReapeatTextField.backgroundColor = .white
        passwordReapeatTextField.placeholder = "reapeat password"
        passwordReapeatTextField.font = .systemFont(ofSize: 12)
        passwordReapeatTextField.borderStyle = .roundedRect
        passwordReapeatTextField.isSecureTextEntry = true
        passwordReapeatTextField.rightView = eyeTwoImageView
        passwordReapeatTextField.rightViewMode = .always
        passwordReapeatTextField.leftView = lockTwoImageView
        passwordReapeatTextField.leftViewMode = .always
        passwordReapeatTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordUpTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
        }
        
        // MARK: -signUpButton
        signUpContainerView.addSubview(signUpButton)
        signUpButton.backgroundColor = .accent
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        signUpButton.tintColor = .black
        signUpButton.layer.cornerRadius = 8
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(passwordReapeatTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
            make.height.equalTo(32)
        }
        
        // MARK: -signUpButton
        signUpContainerView.addSubview(signUpButton)
        signUpButton.backgroundColor = .accent
        signUpButton.setTitle("Sign up", for: .normal)
        signUpButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        signUpButton.tintColor = .black
        signUpButton.layer.cornerRadius = 8
        signUpButton.snp.makeConstraints { make in
            make.top.equalTo(passwordReapeatTextField.snp.bottom).offset(16)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
            make.height.equalTo(32)
        }
        
        // MARK: -nextScreenUIButton
        view.addSubview(nextScreenUIButton)
        nextScreenUIButton.backgroundColor = .accent
        nextScreenUIButton.setTitle("Go to Next Screen ->", for: .normal)
        nextScreenUIButton.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        nextScreenUIButton.tintColor = .black
        nextScreenUIButton.layer.cornerRadius = 8
        nextScreenUIButton.addTarget(self,
                                     action: #selector(goToSecondController(_:)),
                                     for: .touchUpInside)
        nextScreenUIButton.snp.makeConstraints { make in
            make.top.equalTo(scrollView.snp.bottom).offset(32)
            make.trailing.equalTo(signUpContainerView.snp.trailing).offset(-32)
            make.leading.equalTo(signUpContainerView.snp.leading).offset(32)
            make.height.equalTo(32)
        }
    }
    
    // MARK: -Action textFieldEddited
    @IBAction func textFieldEddited(_ sender: UITextField) {
        loginTextField.becomeFirstResponder()
    }
    
    // MARK: -Action nextScreenButtonTapped
    
    @IBAction private func goToSecondController(_ sender: UIButton) {
        let controller = AppartmentViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
     }
    
    // MARK: -Action segmentValueChanged
    @IBAction func segmentValueChanged(_ sender: Any) {
        
        switch segmentView.selectedSegmentIndex {
        case 0:
            signInContainerView.isHidden = false
            loginTextField.enablesReturnKeyAutomatically = true
            signUpContainerView.isHidden = true
            signInContainerView.becomeFirstResponder()
        case 1:
            signInContainerView.isHidden = true
            signUpContainerView.isHidden = false
            signUpContainerView.becomeFirstResponder()
        default:
            return
        }
    }
}

#Preview {
    ViewController()
}

