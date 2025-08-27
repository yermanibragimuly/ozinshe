//
//  ProfileViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit
import SnapKit

class ProfileViewController: UIViewController {
    
    lazy var profileLabel = {
        var label = UILabel()
        label.text = "Профиль"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        
        return label
    }()
    
    lazy var exitButton = {
        var button = UIButton()
        button.setImage(UIImage(named: "exitButton"), for: .normal)
        
        return button
    }()
    
    lazy var bottomView = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
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
    
    lazy var changePasslabel = {
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
    
    lazy var personalInfoChangeLabel = {
        let label = UILabel()
        label.text = "Өңдеу"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 12)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var selectedLanguageLabel = {
        let label = UILabel()
        label.text = "Қазақша"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 12)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var arrowButtonView = {
        let button = UIButton()
        button.setImage(UIImage(named: "arrowImage"), for: .normal)
        button.addTarget(self, action: #selector(editProfileButton), for: .touchUpInside)
        
        return button
    }()
    
    lazy var arrowImageView2 = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowImage")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var arrowImageView3 = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowImage")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var arrowImageView4 = {
        let image = UIImageView()
        image.image = UIImage(named: "arrowImage")
        image.contentMode = .scaleAspectFit
        
        return image
    }()
    
    lazy var bottomView2 = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    lazy var bottomView3 = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
    lazy var bottomView4 = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
    lazy var bottomView5 = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
    lazy var bottomView6 = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
    private lazy var toggleSwitch: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.isOn = false
        uiSwitch.onTintColor = UIColor(named: "B376F7")
        uiSwitch.addTarget(self, action: #selector(toggleChanged(_:)), for: .touchUpInside)
        return uiSwitch
    }()
    
    private lazy var toggleSwitch2: UISwitch = {
        let uiSwitch = UISwitch()
        uiSwitch.isOn = false
        uiSwitch.onTintColor = UIColor(named: "B376F7")
        uiSwitch.addTarget(self, action: #selector(toggleChanged2(_:)), for: .touchUpInside)
        return uiSwitch
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        view.backgroundColor = .white
    }
    
    func setupUI() {
        view.addSubview(profileLabel)
        view.addSubview(exitButton)
        view.addSubview(bottomView)
        view.addSubview(imageProfile)
        view.addSubview(myProfileLabel)
        view.addSubview(emailLabel)
        view.addSubview(backgroundView)
        view.addSubview(personalInfoLabel)
        view.addSubview(personalInfoChangeLabel)
        view.addSubview(changePasslabel)
        view.addSubview(languageLabel)
        view.addSubview(selectedLanguageLabel)
        view.addSubview(termsAndConditionsLabel)
        view.addSubview(pushNotificationsLabel)
        view.addSubview(appearanceLabel)
        view.addSubview(arrowButtonView)
        view.addSubview(bottomView2)
        view.addSubview(bottomView3)
        view.addSubview(bottomView4)
        view.addSubview(bottomView5)
        view.addSubview(bottomView6)
        view.addSubview(arrowImageView2)
        view.addSubview(arrowImageView3)
        view.addSubview(arrowImageView4)
        view.addSubview(toggleSwitch)
        view.addSubview(toggleSwitch2)
        
        profileLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.centerX.equalToSuperview()
        }
        
        bottomView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(0)
            make.top.equalTo(profileLabel.snp.bottom).offset(19)
        }
        
        exitButton.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(60)
            make.right.equalToSuperview().offset(24)
            make.left.equalTo(profileLabel.snp.right).offset(83)
        }
        
        imageProfile.snp.makeConstraints { make in
            make.top.equalTo(bottomView.snp.bottom).offset(24)
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
            make.top.equalToSuperview().offset(359)
            make.bottom.equalToSuperview().inset(90)
            make.width.equalTo(375)
            make.height.equalTo(453)
            make.horizontalEdges.equalToSuperview().inset(0)
        }
        
        personalInfoLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(backgroundView.snp.top).offset(20)
        }
        
        personalInfoChangeLabel.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.top).offset(24)
            make.right.equalTo(arrowButtonView.snp.left).offset(-8)
            make.bottom.equalTo(bottomView2.snp.top).offset(-24)
        }
        
        arrowButtonView.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(backgroundView.snp.top).offset(24)
            make.bottom.equalTo(bottomView2.snp.top).offset(-24)
        }
        
        bottomView2.snp.makeConstraints { make in
            make.top.equalTo(backgroundView.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        changePasslabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView2.snp.bottom).offset(20)
        }
        
        arrowImageView2.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(bottomView2.snp.top).offset(24)
            make.bottom.equalTo(bottomView3.snp.top).offset(-24)
        }
        
        bottomView3.snp.makeConstraints { make in
            make.top.equalTo(bottomView2.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        languageLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView3.snp.bottom).offset(20)
        }
        
        selectedLanguageLabel.snp.makeConstraints { make in
            make.top.equalTo(bottomView3.snp.bottom).offset(24)
            make.right.equalTo(arrowImageView3.snp.left).offset(-8)
            make.bottom.equalTo(bottomView4.snp.top).offset(-24)
        }
        
        arrowImageView3.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(bottomView3.snp.bottom).offset(24)
            make.bottom.equalTo(bottomView4.snp.top).offset(-24)
        }
        
        bottomView4.snp.makeConstraints { make in
            make.top.equalTo(bottomView3.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        termsAndConditionsLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView4.snp.bottom).offset(24)
        }
        
        arrowImageView4.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(bottomView4.snp.bottom).offset(24)
            make.bottom.equalTo(bottomView5.snp.top).offset(-24)
        }
        
        bottomView5.snp.makeConstraints { make in
            make.top.equalTo(bottomView4.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        pushNotificationsLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView5.snp.bottom).offset(24)
        }
        
        bottomView6.snp.makeConstraints { make in
            make.top.equalTo(bottomView5.snp.top).offset(64)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        appearanceLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView6.snp.bottom).offset(24)
        }
        
        toggleSwitch.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(bottomView5.snp.bottom).offset(20)
            make.bottom.equalTo(bottomView6.snp.top).offset(20)
        }
        
        toggleSwitch2.snp.makeConstraints { make in
            make.right.equalToSuperview().offset(-24)
            make.top.equalTo(bottomView6.snp.bottom).offset(20)
            make.bottom.equalTo(backgroundView.snp.bottom).offset(20)
        }
        
    }
    
    @objc private func toggleChanged(_ sender: UISwitch) {
            if sender.isOn {
            } else {
            }
        }
    
    @objc private func toggleChanged2(_ sender: UISwitch) {
            if sender.isOn {
            } else {
            }
        }
    
    @objc func editProfileButton() {
        let editProfileViewController = EditProfileViewController()
        navigationController?.pushViewController(editProfileViewController, animated: true)
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
