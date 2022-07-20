//
//  TredingTableViewCell.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 18/07/22.
//

import UIKit

class TrendingTableViewCell: UITableViewCell {

    static let cellIdentifier = "trendingCell"
  
    @IBOutlet var posterView: UIImageView!

    @IBOutlet var dateLabel: UILabel!
    
    @IBOutlet var titleLabel: UILabel!
    
    func setup(title: String, image: UIImage, year: String){
        titleLabel.text = title
        dateLabel.text = year
        self.posterView.image = image
        self.posterView.layer.cornerRadius = 8

        

    }
}
