//
//  CollectionViewCell.swift
//  Booky
//
//  Created by Angel Terol on 18/11/23.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var collectionView: UIImageView!
    
    @IBOutlet weak var collectionTitle: UILabel!

    @IBOutlet weak var collectionAuthor: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

    }
}
