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
