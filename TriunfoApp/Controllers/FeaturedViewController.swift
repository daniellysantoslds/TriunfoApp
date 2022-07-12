//
//  ViewController.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let popularMovies = Movie.popularMovies()
    let nowPlayingMovies = Movie.nowPlayingMovies()
    
    
    
    
    @IBOutlet weak var nowplayingCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        popularCollectionView.delegate = self
        popularCollectionView.dataSource = self
        
        
        nowplayingCollectionView.dataSource = self
        nowplayingCollectionView.delegate = self
        
        
    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
                
        if collectionView == self.popularCollectionView{
            return popularMovies.count

        } else if collectionView == self.nowplayingCollectionView{
            return nowPlayingMovies.count
        } else {
            return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.popularCollectionView{

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
    
        
        cell?.title.text = popularMovies[indexPath.item].title
        cell?.image.image = UIImage(named: popularMovies[indexPath.item].backdrop)
        
        
        return cell ??  UICollectionViewCell()
        } else if collectionView == self.nowplayingCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "nowPlayingCell", for: indexPath) as? NowPlayingCollectionViewCell
            
            cell?.titleLabel.text = nowPlayingMovies[indexPath.item].title
            cell?.dateLabel.text = nowPlayingMovies[indexPath.item].releaseDate
            cell?.image.image =  UIImage(named: nowPlayingMovies[indexPath.item].poster)
                                         
            return cell ?? UICollectionViewCell()

            } else{
                return UICollectionViewCell()
            }

}
}
