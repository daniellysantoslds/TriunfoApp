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
    
    
   // @IBOutlet var image: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var dateLabel: UILabel!
}
