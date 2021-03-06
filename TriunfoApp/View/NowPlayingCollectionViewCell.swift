//
//  NowPlayingCollectionViewCell.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 11/07/22.
//

import UIKit

class NowPlayingCollectionViewCell: UICollectionViewCell {
    
    static let cellIdentifier = "nowPlayingCell"
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, year: String, image:UIImage){
        titleLabel.text = title
        dateLabel.text = year
        self.imageView.image = image
        self.imageView.layer.cornerRadius = 8
        
        
    }
}
