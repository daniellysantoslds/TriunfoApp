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
        else if collectionView == self.upcomingCollectionView  {
            return upcomingMovies.count
        }
        
        
        else {
            return 0
        }
        
    }
    
    //configurando popular
    
    fileprivate func makePopularCell(_ indexPath: IndexPath) -> PopularCollectionViewCell {
        let cell = popularCollectionView.dequeueReusableCell(withReuseIdentifier: PopularCollectionViewCell.cellIdentifier, for: indexPath) as? PopularCollectionViewCell
        
        
        
        let movie = popularMovies[indexPath.item]
        cell?.setup(title: movie.title, image: UIImage())

        
        Task {
            let imageData = await Movie.dowloadImageData(withPath: movie.backdropPath)
            let imagem: UIImage = UIImage(data: imageData) ?? UIImage()
            cell?.setup(title: movie.title, image: imagem)
        }
        

        
        return cell ??  PopularCollectionViewCell()
    }
    


    
    
    //configurando nowplaying
    
    fileprivate func makeNowPlayingCell(_ indexPath: IndexPath) -> NowPlayingCollectionViewCell {
        let cell = nowplayingCollectionView.dequeueReusableCell(withReuseIdentifier: NowPlayingCollectionViewCell.cellIdentifier, for: indexPath) as? NowPlayingCollectionViewCell
        
        
        let year: String = "\(nowPlayingMovies[indexPath.item].releaseDate.prefix(4))"
        let movie = nowPlayingMovies[indexPath.item]
        cell?.setup(title: movie.title, year: year, image: UIImage())
        
        
        Task{
            let imageData = await Movie.dowloadImageData(withPath: movie.posterPath)
            let imagem: UIImage = UIImage(data: imageData) ?? UIImage()
            cell?.setup(title: movie.title, year: year, image: imagem)
        }
        
        


        
        
        
        return cell ?? NowPlayingCollectionViewCell()
    }
    
    
    
    
    
    //configurando upcoming
    
    fileprivate func makeUpcomingCell(_ indexPath: IndexPath) -> UpcomingCollectionViewCell {
        let cell = upcomingCollectionView.dequeueReusableCell(withReuseIdentifier: UpcomingCollectionViewCell.cellIdentifier, for: indexPath) as? UpcomingCollectionViewCell
        
        
        let year: String = "\(upcomingMovies[indexPath.item].releaseDate.prefix(4))"
        let movie = upcomingMovies[indexPath.item]
        cell?.setup(title: movie.title, year: year, image: UIImage())
        
        
        Task{
            let imageData = await Movie.dowloadImageData(withPath: movie.posterPath)
            let imagem: UIImage = UIImage(data: imageData) ?? UIImage()
            cell?.setup(title: movie.title, year: year, image: imagem)
        }
        

        return cell ??  UpcomingCollectionViewCell()
    }
    
    
    
    
    
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{
            
            return makePopularCell(indexPath)
            
        } else if collectionView == self.nowplayingCollectionView{
            return makeNowPlayingCell(indexPath)
            
        } else if collectionView == self.upcomingCollectionView{
            return makeUpcomingCell(indexPath)
            
        }
        
        else {
            return UICollectionViewCell()
        }
        
    }
    
}
