//
//  ViewController.swift
//  TriunfoApp
//
//  Created by Danielly Santos Lopes da Silva on 04/07/22.
//

import UIKit

class FeaturedViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {
    
    
    let filmes: [Movie] = [Movie(title: "The office", poster: "theoffice", backdrop: "theoffice2", releaseDate: "1999")]
    let ints = [1, 2, 5, 0]
    
    @IBOutlet weak var nowplayingCollectionView: UICollectionView!
    @IBOutlet weak var popularCollectionView: UICollectionView!
    @IBOutlet weak var upcomingCollectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.\
        popularCollectionView.delegate = self
        popularCollectionView.dataSource = self
    }

    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
    return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "popularCell", for: indexPath) as? PopularCollectionViewCell
    
        
        
        cell?.title.text = "Titulo do Filme"
        cell?.image.image = UIImage()
        
        return cell ??  UICollectionViewCell()
    }
    
    
 
}

