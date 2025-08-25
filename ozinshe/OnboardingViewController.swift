//
//  OnboardingViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 22.08.2025.
//

import UIKit
import SnapKit

class OnboardingViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        <#code#>
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        <#code#>
    }
    
    
    var arraySlides = [["firstSlides", "ÖZINŞE-ге қош келдің!", "Фильмдер, телехикаялар, ситкомдар, анимациялық жобалар, телебағдарламалар мен реалити-шоулар, аниме және тағы басқалары"], ["secondSlides", "ÖZINŞE-ге қош келдің!", "Кез келген құрылғыдан қара Сүйікті фильміңді  қосымша төлемсіз телефоннан, планшеттен, ноутбуктан қара"], ["thirdSlides", "ÖZINŞE-ге қош келдің!", "Тіркелу оңай. Қазір тіркел де қалаған фильміңе қол жеткіз"]]
    
    var currentPage = 0 {
        didSet {
            pageControl().currentPage = currentPage
        }
    }
    
    let collectionView: UICollectionView = {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.minimumLineSpacing = 0
        
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
        collectionView.register(OnboardingCell.self, forCellWithReuseIdentifier: "OnboardingCell")
        collectionView.backgroundColor = UIColor(named: " ")
        collectionView.contentInsetAdjustmentBehavior = .never
        collectionView.isPagingEnabled = true
        collectionView.isScrollEnabled = true
        collectionView.showsVerticalScrollIndicator = false
        collectionView.showsHorizontalScrollIndicator = false
        
        return collectionView
    }()
    
    let pageControl = {
        let pc = UIPageControl()
        pc.numberOfPages = 3
        pc.tintColor = .black
        pc.currentPage = 0
        pc.currentPageIndicatorTintColor = UIColor(red: 0.7, green: 0.46, blue: 0.97, alpha: 1)
        pc.contentVerticalAlignment = .center
        pc.contentHorizontalAlignment = .center
        
        return pc
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.setNavigationBarHidden(true, animated: animated)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        navigationController?.setNavigationBarHidden(false, animated: animated)
        navigationItem.title = ""
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    @objc func nextButtonTouched() {
        let singInViewController = SignInViewController()
        navigationController?.pushViewController(singInViewController, animated: true)
    }
    
    func setupUI() {
        view.backgroundColor = UIColor(named: "111827")
        
        view.addSubview(collectionView)
        view.addSubview(pageControl())
        
        collectionView.snp.makeConstraints { make in
            make.top.left.right.bottom.equalToSuperview()
        }
        
        pageControl().snp.makeConstraints { make in
            make.top.equalToSuperview().offset(654)
            make.centerX.equalToSuperview()
        }
    }
}
