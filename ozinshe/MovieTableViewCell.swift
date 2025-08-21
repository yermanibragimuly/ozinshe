//
//  MovieTableViewCell.swift
//  ozinshe
//
//  Created by Yerman Ibragimuly on 21.08.2025.
//

import UIKit
import SnapKit

class MovieTableViewCell: UITableViewCell {
    
    lazy var posterImageView = {
        let imageView = UIImageView()
        
        imageView.image = UIImage(named: "Image")
        
        imageView.contentMode = .scaleAspectFill
        
        imageView.layer.cornerRadius = 8
        imageView.clipsToBounds = true
        
        return imageView
    }
    
    lazy var titleLabel = {
        let label = UILabel()
        
        label.text = "Қызғалдақтар мекені"
        
        return label
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
