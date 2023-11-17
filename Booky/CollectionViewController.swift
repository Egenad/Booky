//
//  CollectionViewController.swift
//  Booky
//
//  Created by Angel Terol on 13/11/23.
//

import UIKit

private let reuseIdentifier = "Cell"
let COLLECTION_CELL_ID = "collectionCell"

class CollectionViewController: UICollectionViewController, UISearchResultsUpdating {

    @IBOutlet weak var cellImage: UIImageView!
    
    var searchController : UISearchController!
    
    let throttler   = Throttler(minimumDelay: 0.5)
    var spinner     = UIActivityIndicatorView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search book name"
        self.navigationItem.searchController = searchController
        
        spinner.hidesWhenStopped = true
        self.view.addSubview(spinner)
        spinner.center.x = self.view.center.x
        spinner.center.y = self.view.center.y
        self.view.bringSubviewToFront(self.spinner)
        
        self.collectionView!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

        // Do any additional setup after loading the view.
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        throttler.throttle {
            
        }
    }

    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return 0
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath)
    
        // Configure the cell
    
        return cell
    }
}
