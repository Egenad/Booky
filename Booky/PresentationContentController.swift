//
//  PresentationContentController.swift
//  Booky
//
//  Created by Angel Terol on 15/11/23.
//

import UIKit

class PresentationContentController: UIViewController {

    @IBOutlet weak var content: UITextView!
    @IBOutlet weak var index: UILabel!
    
    var pageIndex       = 0
    var totalPages      = 0
    var contentString   = ""
    var darkTheme       = true
    
    override func viewDidLoad() {
        super.viewDidLoad()

        var textColor = ""
        self.index.text = "Page \(pageIndex + 1) of \(totalPages)"
        
        if(!darkTheme){
            self.view.backgroundColor = UIColor.white
            self.content.backgroundColor = UIColor.white
            textColor = "#000000"
            index.textColor = UIColor.black
        }
        
        changeColorText(color: textColor)
    }
    
    func changeColorText(color : String){
        content.attributedText = contentString.htmlAttributedString(color)
    }
}
