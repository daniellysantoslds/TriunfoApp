//
//  FeaturedViewController+UICollectionViewDelegate.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 13/07/22.
//

import UIKit


extension FeaturedViewController: UICollectionViewDelegate{
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let movie: Movie
        
        if collectionView == popularCollectionView {
            print("filme da popular")
            movie = popularMovies[indexPath.item]
        } else {
            print("filme da now")
            movie = nowPlayingMovies[indexPath.item]
        }
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    
}


