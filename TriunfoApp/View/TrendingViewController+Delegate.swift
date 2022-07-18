//
//  TrendingViewController+Delegate.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 18/07/22.
//

import UIKit


extension TrendingViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let movie: Movie = trendingDayMovies[indexPath.row]
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    

}
