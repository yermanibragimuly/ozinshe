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

        // Do any additional setup after loading the view.
        
    }
    
    func setupTabs() {
        let HomeVC = HomeViewController()
        let SeacrhVC = SearchViewController()
        let FavoriteVC = FavoriteViewController()
        let ProfileVC = ProfileViewController()
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
