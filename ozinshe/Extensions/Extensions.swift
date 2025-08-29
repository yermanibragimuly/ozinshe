//
//  Extensions.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 28.08.2025.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...) {
        views.forEach({
            addSubview($0)
        })
    }
}

extension UIView {
    static func separator(color: UIColor? = UIColor(named: "D1D5DB"), height: CGFloat = 1) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        view.snp.makeConstraints { make in
            make.height.equalTo(height)
        }
        return view
    }
}
