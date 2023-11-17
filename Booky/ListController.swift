//
//  ListaController.swift
//  Booky
//
//  Created by Angel Terol on 13/11/23.
//

import UIKit

let MAIN_CELL_ID = "tableCell"

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
        
        if let tabBarController = self.tabBarController {
            tabBarController.tabBar.barTintColor = UIColor.black
            
            if let selectedTabBarItem = tabBarController.tabBar.selectedItem {
                selectedTabBarItem.setTitleTextAttributes([NSAttributedString.Key.foregroundColor: UIColor.black], for: .normal)
            }
        }
        

        searchController = UISearchController(searchResultsController: nil)
        searchController.searchResultsUpdater = self
        searchController.obscuresBackgroundDuringPresentation = false
        searchController.searchBar.placeholder = "Search book name"
        self.navigationItem.searchController = searchController
        table.dataSource = self
        
        spinner.hidesWhenStopped = true
        self.view.addSubview(spinner)
        spinner.center.x = self.view.center.x
        spinner.center.y = self.view.center.y
        self.view.bringSubviewToFront(self.spinner)
        
        bookResult = bookDataSource.boughtBooks
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
    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

