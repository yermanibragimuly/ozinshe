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
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        textField.text = "Сіздің email"
        textField.layer.cornerRadius = 12
        return textField
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
        textField.text = "Сіздің құпия сөзіңіз"
        textField.layer.cornerRadius = 12
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
        textField.text = "Сіздің құпия сөзіңіз"
        textField.layer.cornerRadius = 12
        return textField
    }()
    
    let registerUIButton: UIButton = {
        let button = UIButton()
        button.setTitle("Тіркелу", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.layer.cornerRadius = 12
        return button
    }()
    
    let subTitileLabelRegister: UILabel = {
        let label = UILabel()
        label.text = "Сізде аккаунт бар ма?"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
    }()
    

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    
    func setupUI() {
        regLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalToSuperview().inset(124)
        }
            regSubLabel.snp.makeConstraints { make in
                make.left.equalToSuperview().inset(24)
                make.top.equalTo(regLabel.snp.top).offset(0)
            }
            
        emailLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(regSubLabel.snp.top).offset(29)
            }
            
        emailTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(emailLabel.snp.top).offset(4)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(emailTextField.snp.top).offset(12)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(passwordLabel.snp.top).offset(5)
        }
        
        repeatPasswordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(passwordTextField.snp.top).offset(13)
        }
        
        repeatPasswordTextField.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(repeatPasswordLabel.snp.top).offset(5)
        }
        
        registerUIButton.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.top.equalTo(repeatPasswordTextField.snp.top).offset(40)
        }
        
        subTitileLabelRegister.snp.makeConstraints { make in
            make.left.equalToSuperview().inset(24)
            make.right.equalToSuperview().inset(24)
            make.top.equalTo(registerUIButton.snp.top).offset(24)
        }
    }
}

