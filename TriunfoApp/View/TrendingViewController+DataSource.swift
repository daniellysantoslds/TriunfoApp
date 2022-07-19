//
//  TrendingViewController+DataSource.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 18/07/22.
//


import UIKit

extension TrendingViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return trendingDayMovies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "trendingCell") as? TrendingTableViewCell
        
        let movie = trendingDayMovies[indexPath.item]
        Task {
            let imageData = await Movie.dowloadImageData(withPath: movie.posterPath)
            let image = UIImage(data: imageData) ?? UIImage()
            
            let year: String = "\(movie.releaseDate.prefix(4))"
            cell?.setup(title: movie.title, image: image, year: year)
        }
        
        return cell ?? TrendingTableViewCell()
    }
    
    
}
    
