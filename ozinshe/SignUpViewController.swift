//
//  SignUpViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 24.08.2025.
//

import UIKit
import SnapKit
import SwiftyJSON
import Alamofire
import SVProgressHUD

class SignUpViewController: UIViewController {
    
    let regLabel = {
        let label = UILabel()
        label.text = "Тіркелу"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        label.textColor = UIColor(named: "111827")
        return label
    }()
    
    let regSubLabel = {
        let label = UILabel()
        label.text = "Деректерді толтырыңыз"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        label.textColor = UIColor(named: "6B7280")
        
        return label
    }()
    
    let emailLabel: UILabel = {
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
    
    let emailAlreadyExistsLabel = {
        let label = UILabel()
        label.text = "Мұндай email-ы бар пайдаланушы тіркелген"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        label.textColor = UIColor(named: "FF402B")
        return label
    }()
    
    let emailTextField: UITextField = {
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
    
    let passwordImage = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "password")
        
        return imageView
    }()
    let passwordImage2 = {
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
    
    lazy var showPasswordButton2 = {
        let button = UIButton()
        button.setImage(UIImage(named: "showPassword"), for: .normal)
        button.addTarget(self, action: #selector(showPasswordTapped), for: .touchUpInside)
        
        return button
    }()
    
    let passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Құпия сөз"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.textColor = UIColor(named: "111827")
        return label
    }()
    
    let passwordTextField: UITextField = {
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
    
    let repeatPasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Құпия сөзді қайталаңыз"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        label.textColor = UIColor(named: "111827")
        return label
    }()
    
    let repeatPasswordTextField: UITextField = {
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
    
    let siginUpButton: UIButton = {
        let button = UIButton()
        button.setTitle("Тіркелу", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.layer.cornerRadius = 12
        return button
    }()
    
    let siginUpButton2: UIButton = {
        let button = UIButton()
        button.setTitle("Тіркелу", for: .normal)
        button.setTitleColor(UIColor(named: "B376F7"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 14)
        return button
    }()
    
    let quastionLabel: UILabel = {
        let label = UILabel()
        label.text = "Сізде аккаунт бар ма?"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
    }
    
    
    func setupUI() {
        view.addSubview(regLabel)
        view.addSubview(regSubLabel)
        view.addSubview(emailLabel)
        view.addSubview(emailTextField)
        view.addSubview(emailImage)
        view.addSubview(passwordLabel)
        view.addSubview(passwordTextField)
        view.addSubview(passwordImage)
        view.addSubview(passwordImage2)
        view.addSubview(showPasswordButton2)
        view.addSubview(showPasswordButton)
        view.addSubview(repeatPasswordLabel)
        view.addSubview(repeatPasswordTextField)
        view.addSubview(siginUpButton)
        view.addSubview(quastionLabel)
        view.addSubview(siginUpButton2)
        
        regLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(124)
        }
        
        regSubLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalToSuperview().offset(158)
        }
        
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(regSubLabel.snp.bottom).offset(29)
        }
        
        emailTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.top.equalTo(emailLabel.snp.bottom).offset(4)
            make.height.equalTo(56)
            make.width.equalTo(327)
        }
        
        emailImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(emailLabel.snp.bottom).offset(22)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(emailTextField.snp.bottom).offset(13)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.top.equalTo(passwordLabel.snp.bottom).offset(5)
            make.height.equalTo(56)
            make.width.equalTo(327)
        }
        
        passwordImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(passwordLabel.snp.bottom).offset(22)
        }
        
        showPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(22)
            make.right.equalToSuperview().offset(-40)
        }
        
        repeatPasswordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(passwordTextField.snp.bottom).offset(13)
        }
        
        repeatPasswordTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.top.equalTo(repeatPasswordLabel.snp.bottom).offset(5)
            make.height.equalTo(56)
            make.width.equalTo(327)
        }
        
        passwordImage2.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(repeatPasswordLabel.snp.bottom).offset(22)
        }
        
        showPasswordButton2.snp.makeConstraints { make in
            make.top.equalTo(repeatPasswordLabel.snp.bottom).offset(22)
            make.right.equalToSuperview().offset(-40)
        }
        
        siginUpButton.snp.makeConstraints { make in
            make.top.equalTo(repeatPasswordTextField.snp.bottom).offset(40)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(56)
            make.width.equalTo(327)
        }
        
        quastionLabel.snp.makeConstraints { make in
            make.top.equalTo(siginUpButton.snp.bottom).offset(24)
            make.centerX.equalToSuperview().offset(-40)
        }
        
        siginUpButton2.snp.makeConstraints { make in
            make.centerY.equalTo(quastionLabel)
            make.left.equalTo(quastionLabel.snp.right).offset(5)
        }
    }
    
    @objc func showPasswordTapped() {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    
}

