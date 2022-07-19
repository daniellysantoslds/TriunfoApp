//
//  ViewController.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource {
    

    
    var popularMovies: [Movie] = [] //Movie.popularMovies()
    var nowPlayingMovies: [Movie] = []//nowPlayingMovies()
    var upcomingMovies: [Movie] = [] //upcomingMovies()
    
    
    
    
    @IBOutlet weak var nowplayingCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var upcomingCollectionView: UICollectionView!
    
    
    private var imageView: UIImageView {
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: 150, height: 150))
        imageView.image = UIImage(named: "TRFLOGO")
        return imageView
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       // view.addSubview(imageView)
        //view.backgroundColor = .link
        
        
        
        
//        func viewDidLayoutSubviews(){
//           super.viewDidLayoutSubviews()
//           imageView.center = view.center
//
//            DispatchQueue.main.asyncAfter(deadline: .now()0+5, execute: {
//                self.animate()
//            })
//
//        }
//
//        private func animate() {
//
//        }
        
        
        
        
        
        // Do any additional setup after loading the view.\
        popularCollectionView.dataSource = self
        popularCollectionView.delegate = self
        
        //nowplayingCollectionView.dataSource = self
        //nowplayingCollectionView.delegate = self
        
        
        nowplayingCollectionView.dataSource = self
        nowplayingCollectionView.delegate = self
        
        upcomingCollectionView.dataSource = self
        upcomingCollectionView.delegate = self
        
        
       
        
        
        
        
        Task {
            popularMovies = await Movie.popularMoviesAPI()
            self.popularCollectionView.reloadData()
        }
        
        Task {
            nowPlayingMovies = await Movie.nowPlayingMoviesAPI()
            self.nowplayingCollectionView.reloadData()
        }
        
        Task {
            upcomingMovies = await Movie.upComingMoviesAPI()
            self.upcomingCollectionView.reloadData()
        }
        

    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailsViewController{
            let movie = sender as? Movie
            destination.movie = movie
            
        }
        
        
        
        
    }
}

