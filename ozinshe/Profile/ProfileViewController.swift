//
//  ProfileViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    let separator1 = UIView.separator()
    let separator2 = UIView.separator()
    let separator3 = UIView.separator()
    let separator4 = UIView.separator()
    let separator5 = UIView.separator()
    let separator6 = UIView.separator()
    
    lazy var imageProfile = {
       let view = UIImageView()
        view.image = UIImage(named: "profileImage")
        view.contentMode = .scaleToFill
        
        return view
    }()
    
    lazy var myProfileLabel = {
        let label = UILabel()
        label.text = "Менің профилім"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        
        return label
    }()
    
    lazy var emailLabel = {
        let label = UILabel()
        label.text = "email@gmail.com"
        label.font = UIFont(name: "SFProDisplay-Regular", size: 14)
        
        return label
    }()
    
    lazy var backgroundView = {
        let view = UIView()
        view.backgroundColor = UIColor(named: "F9FAFB")
        
        return view
    }()
    
    lazy var personalInfoLabel = {
        let label = UILabel()
        label.text = "Жеке деректер"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var personalInfoChangeLabel = {
        let label = UILabel()
        label.text = "Өңдеу"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 12)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var changePasswordLabel = {
        let label = UILabel()
        label.text = "Құпия сөзді өзгерту"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var languageLabel = {
        let label = UILabel()
        label.text = "Тіл"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var termsAndConditionsLabel = {
        let label = UILabel()
        label.text = "Ережелер мен шарттар"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var pushNotificationsLabel = {
        let label = UILabel()
        label.text = "Хабарландырулар"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var appearanceLabel = {
        let label = UILabel()
        label.text = "Қараңғы режим"
        label.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        label.textColor = UIColor(named: "111827")
        
        return label
    }()
    
    lazy var selectedLanguageLabel = {
        let label = UILabel()
        label.text = "Қазақша"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 12)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var editProfileButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowImage"), for: .normal)
        button.addTarget(self, action: #selector(editProfileButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var changePasswordButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowImage"), for: .normal)
        button.addTarget(self, action: #selector(changePasswordButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var chooseLanguageButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowImage"), for: .normal)
        button.addTarget(self, action: #selector(chooseLanguageButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    lazy var termsAndConditionsButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowImage"), for: .normal)
        button.addTarget(self, action: #selector(termsAndConditionsButtonTapped), for: .touchUpInside)
        
        return button
    }()
    
    private lazy var notificationToggleSwitch: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.isOn = false
        uiSwitch.onTintColor = UIColor(named: "B376F7")
        uiSwitch.addTarget(self, action: #selector(notificationToggleSwitchTapped(_:)), for: .touchUpInside)
        return uiSwitch
    }()
    
    private lazy var appearanceToggleSwitch: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.isOn = false
        uiSwitch.onTintColor = UIColor(named: "B376F7")
        uiSwitch.addTarget(self, action: #selector(appearanceToggleSwitchTapped(_:)), for: .touchUpInside)
        return uiSwitch
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
        navigationItem.title = "Профиль"
    }
    
    func setupUI() {
        view.addSubviews(separator1, imageProfile, myProfileLabel, emailLabel, backgroundView)
        backgroundView.addSubviews(personalInfoLabel, personalInfoChangeLabel, editProfileButton, separator2, changePasswordLabel, changePasswordButton, separator3, languageLabel, selectedLanguageLabel, chooseLanguageButton, separator4, termsAndConditionsLabel, termsAndConditionsButton, separator5, pushNotificationsLabel, notificationToggleSwitch, separator6, appearanceLabel, appearanceToggleSwitch)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(image: UIImage(named: "logoutButton"),                                                      style: .done,
                                                            target: self,
                                                            action: #selector(logoutButtonTapped))
        navigationItem.rightBarButtonItem?.tintColor = UIColor(named: "FF402B")
        
        separator1.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide)
            make.horizontalEdges.equalToSuperview().inset(0)
        }
        
        imageProfile.snp.makeConstraints { make in
            make.top.equalTo(view.safeAreaLayoutGuide).inset(24)
            make.centerX.equalToSuperview()
            make.width.equalTo(120)
            make.height.equalTo(120)
        }
        
        myProfileLabel.snp.makeConstraints { make in
            make.top.equalTo(imageProfile.snp.bottom).offset(24)
            make.centerX.equalToSuperview()
        }
        
        emailLabel.snp.makeConstraints { make in
            make.top.equalTo(myProfileLabel.snp.bottom).offset(8)
            make.centerX.equalToSuperview()
        }
        
        backgroundView.snp.makeConstraints { make in
            make.top.equalTo(emailLabel).offset(24)
            make.bottom.right.left.equalTo(view.safeAreaLayoutGuide)
        }
        
        personalInfoLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.top).offset(24)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        editProfileButton.snp.makeConstraints { make in
            make.right.equalTo(backgroundView.snp.right).offset(-24)
            make.centerY.equalTo(personalInfoLabel)
        }
        
        personalInfoChangeLabel.snp.makeConstraints { make in
            make.right.equalTo(editProfileButton.snp.left).offset(-8)
            make.centerY.equalTo(personalInfoLabel)
        }
        
        separator2.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        changePasswordLabel.snp.makeConstraints { make in
            make.top.equalTo(separator2.snp.bottom).offset(20)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        changePasswordButton.snp.makeConstraints { make in
            make.centerY.equalTo(changePasswordLabel)
            make.right.equalTo(backgroundView.snp.right).offset(-24)
        }
        
        separator3.snp.makeConstraints { make in
            make.top.equalTo(separator2.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        languageLabel.snp.makeConstraints { make in
            make.top.equalTo(separator3.snp.bottom).offset(20)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        chooseLanguageButton.snp.makeConstraints { make in
            make.right.equalTo(backgroundView.snp.right).offset(-24)
            make.centerY.equalTo(languageLabel)
        }
        
        selectedLanguageLabel.snp.makeConstraints { make in
            make.right.equalTo(chooseLanguageButton.snp.left).offset(-8)
            make.centerY.equalTo(languageLabel)
        }
        
        separator4.snp.makeConstraints { make in
            make.top.equalTo(separator3.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        termsAndConditionsLabel.snp.makeConstraints { make in
            make.top.equalTo(separator4.snp.bottom).offset(20)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        termsAndConditionsButton.snp.makeConstraints { make in
            make.right.equalTo(backgroundView.snp.right).offset(-24)
            make.centerY.equalTo(termsAndConditionsLabel)
        }
        
        separator5.snp.makeConstraints { make in
            make.top.equalTo(separator4.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        pushNotificationsLabel.snp.makeConstraints { make in
            make.top.equalTo(separator5.snp.bottom).offset(20)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        notificationToggleSwitch.snp.makeConstraints { make in
            make.right.equalTo(backgroundView.snp.right).offset(-24)
            make.centerY.equalTo(pushNotificationsLabel)
        }
        
        separator6.snp.makeConstraints { make in
            make.top.equalTo(separator5.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        appearanceLabel.snp.makeConstraints { make in
            make.top.equalTo(separator6.snp.bottom).offset(20)
            make.left.equalTo(backgroundView.snp.left).offset(24)
        }
        
        appearanceToggleSwitch.snp.makeConstraints { make in
            make.right.equalTo(backgroundView.snp.right).offset(-24)
            make.centerY.equalTo(appearanceLabel)
        }
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        let targetSize = view.systemLayoutSizeFitting(UIView.layoutFittingCompressedSize)
        preferredContentSize = CGSize(width: view.bounds.width, height: targetSize.height)
    }

    
    @objc private func notificationToggleSwitchTapped(_ sender: UISwitch) {
            if sender.isOn {
            } else {
            }
        }
    
    @objc private func appearanceToggleSwitchTapped(_ sender: UISwitch) {
            if sender.isOn {
            } else {
            }
        }
    
    @objc func editProfileButtonTapped() {
        let editProfileViewController = EditProfileViewController()
        navigationController?.pushViewController(editProfileViewController, animated: true)
    }
    
    @objc func chooseLanguageButtonTapped() {
        let languageSelectionViewController = LanguageSelectionViewController()
        
        languageSelectionViewController.view.layer.cornerRadius = 32
        languageSelectionViewController.view.layer.masksToBounds = true
        
        if let sheet = languageSelectionViewController.sheetPresentationController {
            sheet.detents = [
                .custom { _ in 303 }
            ]
                sheet.prefersGrabberVisible = true
            }
        
        present(languageSelectionViewController, animated: true, completion: nil)
    }
    
    @objc func termsAndConditionsButtonTapped() {
        print("Tapped")
    }
    
    @objc func logoutButtonTapped() {
        let exitViewController = ExitViewController()
        
        exitViewController.view.layer.cornerRadius = 32
            exitViewController.view.layer.masksToBounds = true
            
            if let sheet = exitViewController.sheetPresentationController {
                sheet.detents = [
                    .custom { _ in 303}
                    ]
                sheet.prefersGrabberVisible = true
            }
            
            present(exitViewController, animated: true)
    }
    
    @objc func changePasswordButtonTapped() {
        let changePasswordViewController = ChangePasswordViewController()
        navigationController?.pushViewController(changePasswordViewController, animated: true)
    }
}
