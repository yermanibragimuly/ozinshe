//
//  OnboardingCell.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 22.08.2025.
//

import UIKit
import SnapKit

class OnboardingCell: UICollectionViewCell {
    let identifier = "OnboardingCell"
    
    let image0 = {
        let image = UIImageView()
        image.image = UIImage(named: "firstSlides")
        
        return image
    }()
    
    let welcomeLabel = {
        let label = UILabel()
        label.text = "ÖZINŞE-ге қош келдің!"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        label.textColor = UIColor(named: "FFFFFF")
        label.textAlignment = .center
        
        return label
    }()
    
    let fullInfoLabel = {
        let label = UILabel()
        label.text = "Фильмдер, телехикаялар, ситкомдар, анимациялық жобалар, телебағдарламалар мен реалити-шоулар, аниме және тағы басқалары"
        label.font = UIFont(name: "SFProDisplay-Semibold", size: 14)
        label.textColor = UIColor(named: "6B7280")
        label.textAlignment = .center
        label.numberOfLines = 6
        
        return label
    }()
    
    let nextButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.setTitle("Әрі қарай", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-SemiBold", size: 16)
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    let skipButton = {
        let button = UIButton()
        button.backgroundColor = UIColor(named: "FFFFFF")
        button.setTitle("Өткізу", for: .normal)
        button.setTitleColor(UIColor(named: "111827"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-SemiBold", size: 12)
        button.layer.cornerRadius = 8
        button.configuration?.contentInsets = NSDirectionalEdgeInsets(top: 0, leading: 16, bottom: 0, trailing: 16)
        
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
        backgroundColor = UIColor(named: "FFFFFF")
    }
    
    required init?(coder: NSCoder) {
        fatalError( "init(coder:) has not been implemented" )
    }
    
    func setupUI() {
        addSubview(image0)
        addSubview(welcomeLabel)
        addSubview(fullInfoLabel)
        addSubview(nextButton)
        addSubview(skipButton)
        
        image0.snp.makeConstraints { make in
            make.top.right.left.equalToSuperview()
            make.height.equalTo(504)
        }
        
        welcomeLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview()
            make.bottom.equalTo(image0.snp.bottom).inset(2)
        }
        
        fullInfoLabel.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(32)
            make.top.equalTo(welcomeLabel.snp.bottom).offset(24)
        }
        
        nextButton.snp.makeConstraints { make in
            make.left.right.equalToSuperview().inset(24)
            make.bottom.equalToSuperview().inset(50)
            make.height.equalTo(56)
        }
        
        skipButton.snp.makeConstraints { make in
            make.right.equalToSuperview().inset(24)
            make.top.equalToSuperview().offset(60)
            make.size.equalTo(CGSize(width: 69, height: 24))
        }
    }
}
