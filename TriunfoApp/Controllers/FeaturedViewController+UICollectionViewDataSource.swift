//
//  FeaturedViewController+UICollectionViewDataSource.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 12/07/22.
//

import UIKit

extension FeaturedViewController{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        if collectionView == self.popularCollectionView{
            return popularMovies.count
            
        } else if collectionView == self.nowplayingCollectionView{
            return nowPlayingMovies.count
        }
        
        else if collectionView == self.upcomingCollectionView{
            return upcomingMovies.count
        }
        
        
        else {
            return 0
        }
        
    }
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> PopularCollectionViewCell {
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell
        
        
        cell?.setup(title: popularMovies[indexPath.item].title, image: UIImage(named: popularMovies[indexPath.item].backdrop) ?? UIImage())
        
        
     
        
        return cell ??  PopularCollectionViewCell()
    }
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        let cell = nowplayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell
        
        let year: String = "\(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))"

        cell?.setup(title: nowPlayingMovies[indexPath.item].title,
                        year: year,
                    image: UIImage(named: nowPlayingMovies[indexPath.item].poster) ?? UIImage())
        
        
        
        
        return cell ?? NowPlayingCollectionViewCell()
    }
    
    
    
    
    //    fileprivate func makeUpComingCell(_ indexPath: IndexPath) -> UpComingCollectionViewCell {
    //        let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: "upComingCell", for: indexPath) as? UpcomingCollectionViewCell
    //
    //        cell?.titleLabel.text = upcomingMovies[indexPath.item].title
    //        cell?.date.text = upcomingMovies[indexPath.item].releaseDate
    //        cell?.image.image =  UIImage(named: upcomingMovies[indexPath.item].poster)
    //
    //        return cell ?? UICollectionViewCell()
    //    }
    // lembrar de atualizar cin as anteriores
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{
            
            return makePopularCell(indexPath)
            
        } else if collectionView == self.nowplayingCollectionView{
            return makeNowPlayingCell(indexPath)
            
        } else {
            return UICollectionViewCell()
        }
        
    }
    
}
