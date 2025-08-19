//
//  ViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    var label = UILabel()
   

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        label.text = "Yerman"
        label.textColor = .black
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.top.equalToSuperview().offset(100)
            
        }
    }
        

}

