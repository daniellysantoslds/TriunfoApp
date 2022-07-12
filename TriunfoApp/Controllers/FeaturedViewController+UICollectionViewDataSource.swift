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
        } else {
            return 0
        }
        
    }
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
        
        
        cell?.title.text = popularMovies[indexPath.item].title
        cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
        
        
        return cell ??  UICollectionViewCell()
    }
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> UICollectionViewCell {
        let cell = nowplayingCollectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
        
        cell?.titleLabel.text = nowPlayingMovies[indexPath.item].title
        cell?.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
        cell?.image.image =  UIImage(named: nowPlayingMovies[indexPath.item].poster)
        
        return cell ?? UICollectionViewCell()
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{

            return makePopularCell(indexPath)
        } else if collectionView == self.nowplayingCollectionView{
            return makeNowPlayingCell(indexPath)

            } else{
                return UICollectionViewCell()
            }

}
}
