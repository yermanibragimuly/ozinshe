//
//  FavoriteViewController.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 19.08.2025.
//

import UIKit

class FavoriteViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        tableView.separatorStyle = .none
        navigationItem.title = "Тізім"
        let separator = UIView()
            separator.backgroundColor = UIColor(named: "D1D5DB")
            separator.translatesAutoresizingMaskIntoConstraints = false
            separator.heightAnchor.constraint(equalToConstant: 1).isActive = true
            
            let container = UIView(frame: CGRect(x: 0, y: 0, width: view.frame.width, height: 1))
            container.addSubview(separator)
            
            separator.snp.makeConstraints { make in
                make.horizontalEdges.equalToSuperview().inset(0)
                make.centerY.equalToSuperview()
            }
            tableView.tableHeaderView = container
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = MovieTableViewCell()
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 153
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
