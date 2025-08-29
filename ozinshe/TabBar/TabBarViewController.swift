//
//  TabBarViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit

class TabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTabs()
        
    }
    
    func setupTabs() {
        let HomeVC = HomeViewController()
        let SeacrhVC = SearchViewController()
        let FavoriteVC = FavoriteViewController()
        let ProfileVC = ProfileViewController()
        
        HomeVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Home"), selectedImage: UIImage(named: "HomeEnabled"))
        SeacrhVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Search"), selectedImage: UIImage(named: "SearchEnabled"))
        FavoriteVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Favorite"), selectedImage: UIImage(named: "FavoriteEnabled"))
        ProfileVC.tabBarItem = UITabBarItem(title: "", image: UIImage(named: "Profile"), selectedImage: UIImage(named: "ProfileEnabled"))
        
        let HomeNav = UINavigationController(rootViewController: HomeVC)
        let SearchNav = UINavigationController(rootViewController: SeacrhVC)
        let FavoriteNav = UINavigationController(rootViewController: FavoriteVC)
        let ProfileNav = UINavigationController(rootViewController: ProfileVC)
        
        setViewControllers([HomeNav, SearchNav, FavoriteNav, ProfileNav], animated: true)
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
