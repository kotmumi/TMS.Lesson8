//
//  ViewController.swift
//  Lesson8_Kotylo
//
//  Created by Кирилл Котыло on 18.03.25.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: -segmentView
    
    private let segmentView: UISegmentedControl = {
        let segment = UISegmentedControl(items: ["Sign in", "Sign Up"])
        segment.translatesAutoresizingMaskIntoConstraints = false
        segment.selectedSegmentIndex = 0
        segment.selectedSegmentTintColor = .accent
        segment.addTarget(self,
                          action: #selector(segmentValueChanged(_:)),
                          for: .valueChanged)
        return segment
    }()
    
    // MARK: -labelUILabel
    
    private let labelUILabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .windowsText
        label.font = .systemFont(ofSize: 8, weight: .light)
        label.text = "Актуальные знания для новичков и практикующих специалистов"
        return label
    }()
    
    // MARK: -logoImageView
    
    private let logoImageView: UIImageView = {
        let imageView = UIImageView(image: .TMS)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    // MARK: -nextScreenUIButton
    
    private let nextScreenUIButton: UIButton = {
        let button = UIButton(type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .accent
        button.setTitle("Go to Next Screen ->", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 16, weight: .medium)
        button.tintColor = .black
        button.layer.cornerRadius = 8
        button.addTarget(self,
                         action: #selector(goToSecondController(_:)),
                         for: .touchUpInside)
        return button
    }()
    
    // MARK: -signInView
    
    var signInView = SignInView()
    
    // MARK: -signUpView
    
    var signUpView = SignUpView()
    
    // MARK: -scrollView
    
    private let scrollView = ScrollView()
    
    // MARK: -viewDidLoad
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
        setConstraints()
    }
    // MARK: -setupView
    func setupViews() {
        view.addSubview(segmentView)
        view.addSubview(logoImageView)
        view.addSubview(labelUILabel)
        view.addSubview(signInView)
        view.addSubview(signUpView)
        signUpView.isHidden = true
        view.addSubview(scrollView)
        view.addSubview(nextScreenUIButton)
    }
    
    // MARK: -Action nextScreenButtonTapped
    
    @objc private func goToSecondController(_ sender: UIButton) {
        let controller = AppartmentViewController()
        controller.modalPresentationStyle = .fullScreen
        present(controller, animated: true, completion: nil)
    }
    
    // MARK: -Action segmentValueChanged
    @objc private func segmentValueChanged(_ sender: Any) {
        switch segmentView.selectedSegmentIndex {
        case 0:
            print("0")
            signInView.isHidden = false
            signUpView.isHidden = true
        case 1:
            print("1")
            signInView.isHidden = true
            signUpView.isHidden = false
            
        default:
            return
        }
    }
}


extension ViewController {
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            
            segmentView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
            segmentView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            logoImageView.topAnchor.constraint(equalTo: segmentView.bottomAnchor, constant: 64),
            logoImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            logoImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            logoImageView.heightAnchor.constraint(equalToConstant: 128),
            
            labelUILabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: -32),
            labelUILabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            
            signInView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            signInView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            signInView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            signUpView.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 32),
            signUpView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 32),
            signUpView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -32),
            
            scrollView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -96),
            scrollView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            scrollView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            scrollView.heightAnchor.constraint(equalToConstant: 64),
            
            nextScreenUIButton.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -32),
            nextScreenUIButton.trailingAnchor.constraint(equalTo: signUpView.trailingAnchor, constant: -32),
            nextScreenUIButton.leadingAnchor.constraint(equalTo: signUpView.leadingAnchor, constant: 32),
            nextScreenUIButton.heightAnchor.constraint(equalToConstant: 32),
            
        ])
    }
}

#Preview {
    ViewController()
}

