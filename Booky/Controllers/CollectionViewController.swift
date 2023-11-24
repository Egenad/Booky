//
//  CollectionViewController.swift
//  Booky
//
//  Created by Angel Terol on 13/11/23.
//

import UIKit

private let COLLECTION_CELL_ID = "collectionCell"

class CollectionViewController: UICollectionViewController, UISearchResultsUpdating {
    
    @IBOutlet var cView: UICollectionView!
    
    var searchController : UISearchController!
    
    let throttler   = Throttler(minimumDelay: 0.5)
    var spinner     = UIActivityIndicatorView()
    
    let bookDataSource = BookSourceData.instance
    
    var bookResult = [Book]()
    
    var lastSearch = "init"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateColors()

        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = NSLocalizedString("search", comment: "")
        self.navigationItem.searchController = searchController
        
        spinner.hidesWhenStopped = true
        self.view.addSubview(spinner)
        spinner.center.x = self.view.center.x
        spinner.center.y = self.view.center.y
        self.view.bringSubviewToFront(self.spinner)
        
        bookResult = bookDataSource.allBooks
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        updateColors()
    }
    
    private func updateColors(){
        if let tabBarController = self.tabBarController {
            tabBarController.tabBar.barTintColor = UIColor.white
            
            if let tabBarItems = tabBarController.tabBar.items {
                for tabBarItem in tabBarItems {
                    tabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.lightGray], for: .normal)
                }
            }
            
            if let selectedTabBarItem = tabBarController.tabBar.selectedItem {
                selectedTabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            }
        }
    }
    
    func updateSearchResults(for searchController: UISearchController) {
        throttler.throttle {
            let newText = searchController.searchBar.text!.trimmingCharacters(in: .whitespacesAndNewlines)
            print(newText)
            self.searchResults(word: newText)
        }
    }
    
    func searchResults(word : String){
        
        if(!word.elementsEqual(lastSearch)){
            if(!word.isEmpty){
                bookResult = bookDataSource.searchAllBooksByName(word)
            }else{
                bookResult = bookDataSource.allBooks
            }
        }
        
        self.cView.reloadData()
        self.lastSearch = word
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bookResult.count
    }
    
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: COLLECTION_CELL_ID, for: indexPath) as! CollectionViewCell
    
        cell.collectionView?.image = UIImage(named: bookResult[indexPath.row].portrait)
        cell.collectionAuthor.text = bookResult[indexPath.row].author
        cell.collectionTitle.text = bookResult[indexPath.row].name
        
        return cell
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let dc = segue.destination as? DetailViewController {
            var index : Int = 0
            
            if let indexPaths = collectionView.indexPathsForSelectedItems, let selectedIndexPath = indexPaths.first {
                index = selectedIndexPath.item
            }
            
            dc.book = bookResult[index]
        }
    }
}
