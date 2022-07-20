//
//  PopularCollectionViewCell.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 11/07/22.
//

import UIKit

class PopularCollectionViewCell: UICollectionViewCell {
   
    static let cellIdentifier = "popularCell"
    
    @IBOutlet var imageView: UIImageView!
       
//imageView.layer.cornerRadius = 4
   // imageView.clipsToBounds = true
  
    

    @IBOutlet var titleLabel: UILabel!
    
    func setup(title: String, image: UIImage) {
        titleLabel.text = title
        imageView.image = image
    }
}



