//
//  EditedProfileViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 27.08.2025.
//

import UIKit
import SnapKit

class EditProfileViewController: UIViewController {
    let identifier = "EditProfileViewController"
    
    lazy var editProfileLabel = {
        let label = UILabel()
        label.text = "Жеке деректер"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        
        return label
    }()
    
    lazy var bottomView = {
        let view = UIView()
        
        view.backgroundColor = UIColor(named: "D1D5DB")
        
        return view
    }()
    
    lazy var nameTitleLabel = {
        let label = UILabel()
        label.text = "Сіздің атыңыз"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var nameValueLabel = {
        let label = UILabel()
        label.text = "Yerman"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        
        return label
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
    
    lazy var emailTitileLabel = {
        let label = UILabel()
        label.text = "Email"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var emailValueLabel = {
        let label = UILabel()
        label.text = "email@gmail.com"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        
        return label
    }()
    
    lazy var phoneTitileLabel = {
        let label = UILabel()
        label.text = "Телефон"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var phoneValueLabel = {
        let label = UILabel()
        label.text = "+7 706 601-03-98"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        
        return label
    }()
    
    lazy var birthTitileLabel = {
        let label = UILabel()
        label.text = "Туылған күні"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        label.textColor = UIColor(named: "9CA3AF")
        
        return label
    }()
    
    lazy var birthValueLabel = {
        let label = UILabel()
        label.text = "01 Наурыз 1998"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        
        return label
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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        navigationController?.navigationBar.tintColor = .black
   }
    
    func setupUI() {
        view.addSubview(editProfileLabel)
        view.addSubview(bottomView)
        view.addSubview(nameTitleLabel)
        view.addSubview(nameValueLabel)
        view.addSubview(bottomView2)
        view.addSubview(emailTitileLabel)
        view.addSubview(emailValueLabel)
        view.addSubview(phoneValueLabel)
        view.addSubview(phoneTitileLabel)
        view.addSubview(birthValueLabel)
        view.addSubview(birthTitileLabel)
        view.addSubview(bottomView3)
        view.addSubview(bottomView4)
        view.addSubview(bottomView5)
        view.addSubview(saveButtonPersonalInfo)
        
        editProfileLabel.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(65)
            make.centerX.equalToSuperview()
        }
        
        bottomView.snp.makeConstraints { make in
            make.height.equalTo(1)
            make.horizontalEdges.equalToSuperview().inset(0)
            make.top.equalTo(editProfileLabel.snp.bottom).offset(19)
        }
        
        nameTitleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView.snp.bottom).offset(24)
        }
        
        nameValueLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(nameTitleLabel.snp.bottom).offset(8)
        }
        
        bottomView2.snp.makeConstraints { make in
            make.top.equalTo(nameValueLabel.snp.bottom).offset(12)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        emailTitileLabel.snp.makeConstraints { make in
            make.top.equalTo(bottomView2.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(24)
        }
        
        emailValueLabel.snp.makeConstraints { make in
            make.top.equalTo(emailTitileLabel.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(24)
        }
        
        bottomView3.snp.makeConstraints { make in
            make.top.equalTo(emailValueLabel.snp.bottom).offset(12)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        phoneTitileLabel.snp.makeConstraints { make in
            make.top.equalTo(bottomView3.snp.bottom).offset(24)
            make.left.equalToSuperview().offset(24)
        }
        
        phoneValueLabel.snp.makeConstraints { make in
            make.top.equalTo(phoneTitileLabel.snp.bottom).offset(8)
            make.left.equalToSuperview().offset(24)
        }
        
        bottomView4.snp.makeConstraints { make in
            make.top.equalTo(phoneValueLabel.snp.bottom).offset(12)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        birthTitileLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(bottomView4.snp.bottom).offset(24)
        }
        
        birthValueLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(birthTitileLabel.snp.bottom).offset(8)
        }
        
        bottomView5.snp.makeConstraints { make in
            make.top.equalTo(birthValueLabel.snp.bottom).offset(12)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(1)
        }
        
        saveButtonPersonalInfo.snp.makeConstraints { make in
            make.top.equalTo(bottomView5.snp.bottom).offset(250)
            make.bottom.equalToSuperview().offset(-42)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(56)
            make.width.equalTo(327)
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
