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
    
    @IBOutlet weak var mainStack: UIStackView!
    
    var book : Book? = nil
    
    var boughtBooks = BoughtBooks.instance
    
    override func viewDidLoad() {
        super.viewDidLoad()

        /*if(book != nil){
            portrait.image = UIImage(named: book?.portrait ?? "hp1")
            bookAuthor.text = book?.author
            bookTitle.text = book?.name
            setRating(rating: book?.stars.rawValue ?? Stars.noStar.rawValue)
            
            if boughtBooks.findBookByName(book?.name ?? "") != nil{
                buyButton.isEnabled = false
                buyButton.setTitle("Bought", for: UIControl.State.disabled)
            }
            
            buyButton.tintColor = UIColor.black
            
            sinopsis.text = book?.synopsis
        }
        */
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
    
    override func viewWillLayoutSubviews() {
        if view.bounds.size.width >= view.bounds.size.height {
            self.mainStack.axis = .horizontal
        }
        else {
            self.mainStack.axis = .vertical
        }
    }

    

    @IBAction func buyBook(_ sender: Any) {
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
