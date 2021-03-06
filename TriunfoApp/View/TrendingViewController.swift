//
//  TrendingViewController.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 18/07/22.
//

import Foundation


import UIKit


class TrendingViewController: UIViewController {
    
    var trendingDayMovies: [Movie] = []

    
    @IBOutlet var trendingTableView: UITableView!
//    @IBOutlet var trendingSegmented: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        trendingTableView.dataSource = self
        trendingTableView.delegate = self
    
    Task{
        self.trendingDayMovies = await Movie.trendingDayMoviesAPI()
        self.trendingTableView.reloadData()
    }
    
    
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender:Any?) {
        if let destination = segue.destination as? DetailsViewController{
            let movie = sender as? Movie
            destination.movie = movie
        }
    }
}
