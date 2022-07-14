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
        print(movie)
        
        self.title = movie?.title
        
        
    }
  
    
    
    
    

}
