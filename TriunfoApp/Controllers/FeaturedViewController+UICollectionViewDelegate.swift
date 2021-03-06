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
            movie = popularMovies[indexPath.item]
        }
        else if collectionView == nowplayingCollectionView {
            print("filme da now")
            movie = nowPlayingMovies[indexPath.item]
        } else  {
            print("pegou")
            movie = upcomingMovies[indexPath.item]
        }
        self.performSegue(withIdentifier: "detailsSegue", sender: movie)
    }
    
}


