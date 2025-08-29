//
//  SignInViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 24.08.2025.
//

import UIKit
import SnapKit

class SignInViewController: UIViewController {
    
    let welcomeLabel = {
        let label = UILabel()
        label.text = "Сәлем"
        label.textColor = UIColor(named: "111827")
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        return label
    }()
    
    let welcomeSubTitile = {
        let label = UILabel()
        label.text = "Аккаунтқа кіріңіз"
        label.textColor = UIColor(named: "9CA3AF")
        label.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        return label
    }()
    
    let emailLabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.textColor = UIColor(named: "111827")
        return label
    }()
    
    let emailErrorLabel = {
        let label = UILabel()
        label.text = "Қате формат"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        label.textColor = UIColor(named: "FF402B")
        return label
    }()
    
    let emailTextField = {
        let textField = UITextField()
        textField.textColor = UIColor(named: "111827")
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(named: "E5EBF0")?.cgColor
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 0))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        return textField
    }()
    
    let passwordLabel = {
        let label = UILabel()
        label.text = "Құпия сөз"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.textColor = UIColor(named: "111827")
        return label
    }()
    
    let passwordTextField = {
        let textField = UITextField()
        textField.textColor = UIColor(named: "111827")
        textField.isSecureTextEntry = true
        textField.layer.cornerRadius = 12
        textField.layer.borderWidth = 1
        textField.layer.borderColor = UIColor(named: "E5EBF0")?.cgColor
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 44, height: 0))
        textField.leftView = paddingView
        textField.leftViewMode = .always
        
        return textField
    }()
    
    let passwordImage = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "password")
        
        return imageView
    }()
    
    let emailImage = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "email")
        
        return imageView
    }()
    
    lazy var showPasswordButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "showPassword"), for: .normal)
        button.addTarget(self, action: #selector(showPasswordTapped), for: .touchUpInside)
        
        return button
    }()
    
    let siginInButton: UIButton = {
        let button = UIButton()
        button.setTitle("Кіру", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    let quastionLabel = {
        let label = UILabel()
        label.text = "Аккаунтыныз жоқ па?"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    let siginUpButton = {
        let button = UIButton()
        button.setTitle("Тіркелу", for: .normal)
        button.setTitleColor(UIColor(named: "B376F7"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        
        return button
    }()
    
    let orSignInWithLabel = {
        let label = UILabel()
        label.textColor = UIColor(named: "9CA3AF")
        label.text = "Немесе"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        
        return label
    }()
    
    let buttonSignInWithApple = {
        let button = UIButton()
        button.setTitle("Apple ID-мен тіркеліңіз", for: .normal)
        button.setTitleColor(UIColor(named: "111827"), for: .normal)
        button.setImage(UIImage(named: "apple"), for: .normal)
        button.layer.borderColor = UIColor(named: "E5EBF0")?.cgColor
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 1.5
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: -10)
        
        return button
    }()
    
    let buttonSignInWithGoogle = {
        let button = UIButton()
        button.setTitle("Google-мен тіркеліңіз", for: .normal)
        button.setTitleColor(UIColor(named: "111827"), for: .normal)
        button.setImage(UIImage(named: "google"), for: .normal)
        button.layer.borderColor = UIColor(named: "E5EBF0")?.cgColor
        button.layer.cornerRadius = 12
        button.layer.borderWidth = 1.5
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        button.imageEdgeInsets = UIEdgeInsets(top: 0, left: -5, bottom: 0, right: 5)
        button.titleEdgeInsets = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: -10)
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        view.addSubview(welcomeLabel)
        view.addSubview(welcomeSubTitile)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(emailImage)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(passwordImage)
        view.addSubview(showPasswordButton)
        view.addSubview(siginInButton)
        view.addSubview(quastionLabel)
        view.addSubview(siginUpButton)
        view.addSubview(orSignInWithLabel)
        view.addSubview(buttonSignInWithApple)
        view.addSubview(buttonSignInWithGoogle)
        
        welcomeLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(16)
        }
        
        welcomeSubTitile.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(welcomeLabel.snp.bottom).inset(0)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(welcomeSubTitile.snp.bottom).offset(32)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.left.equalToSuperview().inset(24)
            make.right.equalToSuperview().inset(24)
            make.height.equalTo(56)
        }
        
        emailImage.snp.makeConstraints { make in
            make.centerY.equalTo(emailTextField)
            make.leading.equalTo(emailTextField.snp.leading).inset(16)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTextField.snp.bottom).offset(13)
            make.left.equalToSuperview().inset(24)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(4)
            make.left.equalToSuperview().inset(24)
            make.right.equalToSuperview().inset(24)
            make.height.equalTo(56)
        }
        
        passwordImage.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField)
            make.leading.equalTo(passwordTextField.snp.leading).inset(16)
        }
        
        showPasswordButton.snp.makeConstraints { make in
            make.centerY.equalTo(passwordTextField)
            make.right.equalTo(passwordTextField).inset(0)
            make.height.equalTo(56)
            make.width.equalTo(36)
        }
        
        siginInButton.snp.makeConstraints { make in
            make.top.equalTo(passwordTextField.snp.bottom).offset(24)
            make.right.equalToSuperview().inset(24)
            make.left.equalToSuperview().inset(24)
            make.height.equalTo(56)
            make.width.equalTo(327)
        }
        
        quastionLabel.snp.makeConstraints { make in
            make.top.equalTo(siginInButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview().offset(-40)
        }

        siginUpButton.snp.makeConstraints { make in
            make.centerY.equalTo(quastionLabel)
            make.left.equalTo(quastionLabel.snp.right).offset(5)
        }
        
        orSignInWithLabel.snp.makeConstraints { make in
            make.top.equalTo(quastionLabel.snp.bottom).offset(40)
            make.centerX.equalToSuperview()
        }
        
        buttonSignInWithApple.snp.makeConstraints { make in
            make.top.equalTo(orSignInWithLabel.snp.bottom).offset(16)
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().inset(24)
            make.left.equalToSuperview().inset(24)
            make.height.equalTo(52)
            make.width.equalTo(327)
        }
        
        buttonSignInWithGoogle.snp.makeConstraints { make in
            make.top.equalTo(buttonSignInWithApple.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
            make.right.equalToSuperview().inset(24)
            make.left.equalToSuperview().inset(24)
            make.height.equalTo(52)
            make.width.equalTo(327)
            
        }
    }
    
    @objc func showPasswordTapped() {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    
}
