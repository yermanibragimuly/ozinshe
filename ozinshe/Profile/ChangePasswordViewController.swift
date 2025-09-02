//
//  ChangePasswordViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 02.09.2025.
//

import UIKit
import SnapKit

class ChangePasswordViewController: UIViewController {
    
    let identifier: String = "ChangePasswordViewController"
    
    lazy var editProfileLabel = {
        let label = UILabel()
        label.text = "Құпия сөзді өзгерту"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        
        return label
    }()
    
    lazy var passwordLabel: UILabel = {
        let label = UILabel()
        label.text = "Құпия сөз"
        return label
    }()
    
    lazy var rePasswordLabel: UILabel = {
        let label = UILabel()
        label.text = "Құпия сөзді қайталаңыз"
        return label
    }()
    
    lazy var passwordImage = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "password")
        
        return imageView
    }()
    lazy var passwordImage2 = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "password")
        
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
    
    let saveButtonPersonalInfo: UIButton = {
        let button = UIButton()
        button.setTitle("Өзгерістерді сақтау", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton(type: .system)
        button.setImage(UIImage(named: "backBtn"), for: .normal)
        button.tintColor = UIColor(named: "111827")
        button.addTarget(self, action: #selector(backTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var bottomView = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        navigationItem.title = "Жеке деректер"
        navigationItem.leftBarButtonItem = UIBarButtonItem(customView: backButton)
        // Do any additional setup after loading the view.
    }
        
    func setupUI() {
        view.backgroundColor = .white
        
        view.addSubviews(passwordLabel, rePasswordLabel, passwordImage, passwordImage2, showPasswordButton, showPasswordButton2, passwordTextField, repeatPasswordTextField, saveButtonPersonalInfo, backButton, bottomView)
        
        bottomView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(0)
            make.top.equalTo(view.safeAreaLayoutGuide)
        }
        
        passwordLabel.snp.makeConstraints { make in
            make.top.equalTo(bottomView.snp.bottom).offset(21)
            make.left.equalToSuperview().offset(24)
        }
        
        passwordTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.top.equalTo(passwordLabel.snp.bottom).offset(4)
            make.height.equalTo(56)
        }
        
        passwordImage.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(passwordLabel.snp.bottom).offset(22)
        }
        
        showPasswordButton.snp.makeConstraints { make in
            make.top.equalTo(passwordLabel.snp.bottom).offset(22)
            make.right.equalToSuperview().offset(-40)
        }
        
        rePasswordLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(passwordTextField.snp.bottom).offset(13)
        }
        
        repeatPasswordTextField.snp.makeConstraints { make in
            make.horizontalEdges.equalToSuperview().inset(24)
            make.top.equalTo(rePasswordLabel.snp.bottom).offset(5)
            make.height.equalTo(56)
        }
        
        passwordImage2.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(40)
            make.top.equalTo(rePasswordLabel.snp.bottom).offset(22)
        }
        
        showPasswordButton2.snp.makeConstraints { make in
            make.top.equalTo(rePasswordLabel.snp.bottom).offset(22)
            make.right.equalToSuperview().offset(-40)
        }
        
        saveButtonPersonalInfo.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-24)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(56)
        }
    }
    
    @objc func showPasswordTapped() {
        passwordTextField.isSecureTextEntry = !passwordTextField.isSecureTextEntry
    }
    
    @objc private func backTapped() {
        navigationController?.popViewController(animated: true)
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
