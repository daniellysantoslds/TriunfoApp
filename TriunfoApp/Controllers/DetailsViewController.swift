//
//  DetailsViewController.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 13/07/22.
//

import UIKit

class DetailsViewController: UIViewController {
    
    @IBOutlet var backdropImage: UIImageView!
    @IBOutlet var titleLabel: UILabel!
    @IBOutlet var posterImage: UIImageView!
    @IBOutlet var ratingLabel: UILabel!
    @IBOutlet var overviewLabel: UILabel!
    
    
    
    var movie: Movie?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        //print(movie)
        
        
        
        guard let movie = movie else {
            return
        }
        
        title = movie.title
        
        Task{
            let imageData = await Movie.dowloadImageData(withPath: movie.backdropPath)
            let image = UIImage(data: imageData) ?? UIImage()
            backdropImage.image = image
        }
        
        titleLabel.text = movie.title
        
        
        
        Task{
            let imageData = await Movie.dowloadImageData(withPath: movie.posterPath)
            let image = UIImage(data: imageData) ?? UIImage()
            posterImage.image = image
        }
        
        
        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
        overviewLabel.text = movie.overview
        
        
        
        
//        backdropImage.image = UIImage(named: movie.backdropPath)
//        titleLabel.text = movie.title
//        posterImage.image = UIImage(named: movie.posterPath)
//        ratingLabel.text = "Rating: \(movie.voteAverage)/10"
//        overviewLabel.text = movie.overview
//
        
        
    }
    
}
