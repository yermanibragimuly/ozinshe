//
//  ExitViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 02.09.2025.
//

import UIKit
import SnapKit

class ExitViewController: UIViewController {
    
    let identifier = "ExitViewController"
    
    lazy var exitLabel = {
        let label = UILabel()
        label.text = "Шығу"
        label.font = UIFont(name: "SFProDisplay-Bold", size: 24)
        
        return label
    }()
    
    lazy var subExitLabel: UILabel = {
        let label = UILabel()
        label.text = "Сіз шынымен аккаунтыныздан "
        label.font = UIFont(name: "SFProDisplay-Regular", size: 16)
        label.textColor = UIColor(named:"9CA3AF")
        
        return label
    }()
    
    let exitButton: UIButton = {
        let button = UIButton()
        button.setTitle("Иә, шығу", for: .normal)
        button.setTitleColor(UIColor(named: "FFFFFF"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Bold", size: 16)
        button.backgroundColor = UIColor(named: "7E2DFC")
        button.layer.cornerRadius = 12
        
        return button
    }()
    
    let closeButton: UIButton = {
        let button = UIButton()
        button.setTitle("Жоқ", for: .normal)
        button.setTitleColor(UIColor(named: "7E2DFC"), for: .normal)
        button.titleLabel?.font = UIFont(name: "SFProDisplay-Medium", size: 16)
        button.layer.cornerRadius = 12
        
        return button
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        
        view.addSubviews(exitButton, closeButton, exitLabel, subExitLabel)
        
        exitLabel.snp.makeConstraints { make in
            make.left.equalTo(view.safeAreaLayoutGuide).offset(24)
            make.top.equalTo(view.safeAreaLayoutGuide).offset(24)
        }
        
        subExitLabel.snp.makeConstraints { make in
            make.top.equalTo(exitLabel.snp.bottom).offset(8)
            make.left.equalTo(view.safeAreaLayoutGuide).offset(24)
        }
        
        exitButton.snp.makeConstraints { make in
            make.top.equalTo(subExitLabel.snp.bottom).offset(32)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(56)
        }
        
        closeButton.snp.makeConstraints { make in
            make.top.equalTo(exitButton.snp.bottom).offset(8)
            make.bottom.equalTo(view.safeAreaLayoutGuide).offset(-24)
            make.horizontalEdges.equalToSuperview().inset(24)
            make.height.equalTo(56)
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
