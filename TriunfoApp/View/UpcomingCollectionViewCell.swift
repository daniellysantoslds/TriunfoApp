//
//  UpComingViewCell.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 13/07/22.
//

import UIKit

class UpcomingCollectionViewCell: UICollectionViewCell{
    
    static let cellIdentifier = "upcomingCell"

    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
    
    func setup(title: String, year: String, image:UIImage){
        titleLabel.text = title
        dateLabel.text = year
        self.imageView.image = image
        self.imageView.image = image
        self.imageView.layer.cornerRadius = 8
    }
    
    
    //atualizar e configurar o codigo de acordo com as outras views 
}


