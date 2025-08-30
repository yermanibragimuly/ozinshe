//
//  LanguageSelectionViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 28.08.2025.
//

import UIKit
import SnapKit

class LanguageSelectionViewController: UIViewController {
    
    let identifier = "LanguageSelectionViewController"
    
    var separator1 = UIView.separator()
    var separator2 = UIView.separator()
    
    lazy var languageLabel = {
        let label = UILabel()
        label.text = "Тіл"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        
        return label
    }()
    
    lazy var englishLabel = {
       let label = UILabel()
        label.text = "English"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 16)
        
        return label
    }()
    
    lazy var kazakhLabel = {
       let label = UILabel()
        label.text = "Қазақша"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 16)
        
        return label
    }()
    
    lazy var russiaLabel = {
       let label = UILabel()
        label.text = "Русский"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 16)
        
        return label
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
    }
    
    func setupUI() {
        
        view.addSubviews(languageLabel, englishLabel, separator1, kazakhLabel, separator2, russiaLabel)
        
        languageLabel.snp.makeConstraints { make in
            make.left.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(24)
        }
        
        englishLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(languageLabel.snp.bottom).offset(32)
        }
        
        separator1.snp.makeConstraints { make in
            make.top.equalTo(englishLabel.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview().inset(24)
        }
        
        kazakhLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(separator1.snp.bottom).offset(20)
        }
        
        separator2.snp.makeConstraints { make in
            make.top.equalTo(kazakhLabel.snp.bottom).offset(20)
            make.horizontalEdges.equalToSuperview().inset(24)
        }
        
        russiaLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(24)
            make.top.equalTo(separator2.snp.bottom).offset(20)
        }
    }
}
