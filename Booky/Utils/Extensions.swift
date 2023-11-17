//
//  Extensions.swift
//  Booky
//
//  Created by Angel Terol on 16/11/23.
//

import Foundation

extension String {
    
    func htmlAttributedString() -> NSAttributedString? {
        return htmlAttributedString("")
    }
    
    func htmlAttributedString(_ color : String) -> NSAttributedString? {
        
        let style = """
            body {
                font-family: -apple-system;
                font-size: 15px;
                color: \(color.isEmpty ? "#FFFFFF" : color);
                text-align: justify;
            }
            p.indent {
                text-indent: 30px;
            }
        """
        
        let htmlTemplate = """
            <!doctype html>
            <html>
                <head>
                    <style>
                    \(style)
                    </style>
                </head>
                <body>
                    \(self)
                </body>
            </html>
        """
        
        guard let data = htmlTemplate.data(using: .utf8) else {
            return nil
        }

        return try? NSAttributedString(
            data: data,
            options: [.documentType: NSAttributedString.DocumentType.html],
            documentAttributes: nil
        )
    }
}
