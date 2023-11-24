//
//  DetailViewController.swift
//  Booky
//
//  Created by Angel Terol on 21/11/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var portrait: UIImageView!
    
    @IBOutlet weak var bookAuthor: UILabel!
    
    @IBOutlet weak var bookTitle: UILabel!
    
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var buyButton: UIButton!
    
    @IBOutlet weak var sinopsis: UITextView!
    
    var book : Book? = nil
    
    var boughtBooks = BoughtBooks.instance
    var allBooks = BookSourceData.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if(book != nil){
            portrait.image = UIImage(named: book?.portrait ?? "hp1")
            bookAuthor.text = book?.author
            bookTitle.text = book?.name
            setRating(rating: book?.stars.rawValue ?? Stars.noStar.rawValue)
            
            if boughtBooks.findBookByName(book?.name ?? "") != nil{
                buyButton.isEnabled = false
                buyButton.setTitle(NSLocalizedString("bought", comment: ""), for: UIControl.State.disabled)
            }
            
            buyButton.tintColor = UIColor.black
            
            sinopsis.text = book?.synopsis
        }
        if let navigationController = self.navigationController {
            navigationController.navigationBar.tintColor = UIColor.black
            
            navigationController.navigationBar.topItem?.backBarButtonItem = UIBarButtonItem(title: "", style: .plain, target: nil, action: nil)
        }
    }
    
    func setRating(rating: Int) {
        for (index, subview) in stackView.subviews.enumerated() {
            if let starImageView = subview as? UIImageView {
                let imageName = (index < rating) ? "star.fill" : "star"
                let originalImage = UIImage(systemName: imageName)
                let tintedImage = originalImage?.withRenderingMode(.alwaysOriginal)
                let coloredImage = tintedImage?.withTintColor(UIColor.black)
                starImageView.image = coloredImage
            }
        }
    }

    @IBAction func buyBook(_ sender: Any) {
        if(book != nil){
            if let b = allBooks.findBookByName(book?.name ?? ""){
                boughtBooks.addBook(newBook: b)
                buyButton.isEnabled = false
                buyButton.setTitle(NSLocalizedString("bought", comment: ""), for: UIControl.State.disabled)
                
                let alertController = UIAlertController(title: NSLocalizedString("purchase_t", comment: ""), message: "\(NSLocalizedString("purchase_c", comment: "")) \"\(String(describing: book?.name ?? ""))\"!", preferredStyle: .alert)
                
                let action = UIAlertAction(title: NSLocalizedString("continue", comment: ""), style: .default) { _ in}
                alertController.addAction(action)
                present(alertController, animated: true, completion: nil)
            }
        }
    }
}
