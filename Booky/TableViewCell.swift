//
//  TableViewCell.swift
//  Booky
//
//  Created by Angel Terol on 15/11/23.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var portrait: UIImageView!
    @IBOutlet weak var title: UILabel!
    @IBOutlet weak var author: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
