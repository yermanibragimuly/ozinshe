//
//  HomeViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit
import SnapKit

class HomeViewController: UIViewController {
    
    lazy var contentView: UIView = {
        let view = UIView()
        return view
    }()
        
    func logoImageView() {
        let image = UIImage(named: "logoForHome")
        let logoImageVIew = UIImageView(image: image)
        let imageItem = UIBarButtonItem(customView: logoImageVIew)
        navigationItem.leftBarButtonItem = imageItem
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        logoImageView()
        setupUI()
        // Do any additional setup after loading the view.
    }
    
    func setupUI() {
        view.addSubview(contentView)
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

