//
//  ListaController.swift
//  Booky
//
//  Created by Angel Terol on 13/11/23.
//

import UIKit

private let MAIN_CELL_ID = "tableCell"

class ListController: UITableViewController, UISearchResultsUpdating {
    

    @IBOutlet weak var table: UITableView!
    
    var searchController : UISearchController!
    let throttler = Throttler(minimumDelay: 0.5)
    
    let bookDataSource = BoughtBooks.instance
    
    var bookResult = [Book]()
    
    var spinner = UIActivityIndicatorView()
    
    var lastSearch = "init"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.table.backgroundColor = UIColor(red: 0.949, green: 0.949, blue: 0.949, alpha: 1)
        
        updateColors()

        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = NSLocalizedString("search", comment: "")
        self.navigationItem.searchController = searchController
        table.dataSource = self
        
        spinner.hidesWhenStopped = true
        self.view.addSubview(spinner)
        spinner.center.x = self.view.center.x
        spinner.center.y = self.view.center.y
        self.view.bringSubviewToFront(self.spinner)
        
        bookResult = bookDataSource.boughtBooks
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let searchText = searchController.searchBar.text!.trimmingCharacters(in: .whitespacesAndNewlines)
        if(searchText.isEmpty){
            lastSearch = "init"
            searchResults(word: "")
        }
        updateColors()
    }
    
    private func updateColors(){
        
        if let tabBarController = self.tabBarController {
            tabBarController.tabBar.barTintColor = UIColor.black
            
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
                bookResult = bookDataSource.searchBoughtBooksByName(word)
            }else{
                bookResult = bookDataSource.boughtBooks
            }
        }
        
        self.table.reloadData()
        self.lastSearch = word
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookResult.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let actualCell = tableView.dequeueReusableCell(withIdentifier: MAIN_CELL_ID, for: indexPath) as! TableViewCell
        
        actualCell.author?.text = "\(bookResult[indexPath.row].author)"
        actualCell.title?.text = "\(bookResult[indexPath.row].name)"
        actualCell.portrait?.image = UIImage(named:bookResult[indexPath.row].portrait)
        
        return actualCell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if let vc2 = segue.destination as? PresentationController {
            
            var index : Int = 0
            
            if(table.indexPathForSelectedRow != nil){
                index = table.indexPathForSelectedRow!.row
            }
            
            vc2.book = bookResult[index]
        }
    }
}

