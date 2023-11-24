//
//  BookResources.swift
//  Booky
//
//  Created by Angel Terol on 14/11/23.
//

import UIKit

enum Stars : Int{
    case noStar
    case oneStar
    case twoStar
    case threeStar
    case fourStar
    case fiveStar
}

enum Genre : String{
    case Fantasy
    case Historical_Fiction
    case Mystery
    case Romance
    case SciFi
}

class Book{
    var name : String = ""
    var author: String = ""
    var synopsis : String = ""
    var portrait : String = ""
    var pages = Array<String>()
    var stars : Stars = .noStar
    var genre : Genre = .Fantasy
    
    init(){
        
    }
    
    init(name : String, author : String, synopsis : String, portrait : String, pages : Array<String>, genre : Genre, stars : Stars){
        self.name = name
        self.author = author
        self.synopsis = synopsis
        self.portrait = portrait
        self.pages = Array(pages)
        self.genre = genre
        self.stars = stars
    }
}

final class BookSourceData{
    static let instance = BookSourceData()
    var allBooks = Array<Book>()
    
    private init(){
        
        var b_pages = [hp1_0, hp1_1, hp1_2, hp1_3]
        
        var b = Book(
            name: NSLocalizedString("hp1_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp1_2", comment: ""),
            portrait: "hp1",
            pages: b_pages,
            genre: .Fantasy,
            stars: .fiveStar
        )
        
        allBooks.append(b)
        
        b_pages = [hp2_0, hp2_1, hp2_2, hp2_3]
        
        b = Book(
            name: NSLocalizedString("hp2_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp2_s", comment: ""),
            portrait: "hp2",
            pages: b_pages,
            genre: .Fantasy,
            stars: .fourStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("hp3_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp3_s", comment: ""),
            portrait: "hp3",
            pages: Array(),
            genre: .Fantasy,
            stars: .fiveStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("hp4_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp4_s", comment: ""),
            portrait: "hp4",
            pages: Array(),
            genre: .Fantasy,
            stars: .fourStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("hp5_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp5_s", comment: ""),
            portrait: "hp5",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("hp6_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp6_s", comment: ""),
            portrait: "hp6",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("hp7_t", comment: ""),
            author: "J. K. Rowling",
            synopsis: NSLocalizedString("hp7_s", comment: ""),
            portrait: "hp7",
            pages: Array(),
            genre: .Fantasy,
            stars: .fiveStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("bs_ts_t", comment: ""),
            author: "Brandon Sanderson",
            synopsis: NSLocalizedString("bs_ts_s", comment: ""),
            portrait: "bs_tes",
            pages: Array(),
            genre: .Fantasy,
            stars: .oneStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("bs_tfwh_t", comment: ""),
            author: "Brandon Sanderson",
            synopsis: NSLocalizedString("bs_tfwh_s", comment: ""),
            portrait: "bs_tfwh",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("bs_yn_t", comment: ""),
            author: "Brandon Sanderson",
            synopsis: NSLocalizedString("bs_yn_s", comment: ""),
            portrait: "bs_yatnp",
            pages: Array(),
            genre: .Fantasy,
            stars: .fourStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("bs_sm_t", comment: ""),
            author: "Brandon Sanderson",
            synopsis: NSLocalizedString("bs_sm_s", comment: ""),
            portrait: "bs_sm",
            pages: Array(),
            genre: .Fantasy,
            stars: .twoStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("lg_af_t", comment: ""),
            author: "Laura Gallego",
            synopsis: NSLocalizedString("lg_af_s", comment: ""),
            portrait: "lg_af",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("lg_an_t", comment: ""),
            author: "Laura Gallego",
            synopsis: NSLocalizedString("lg_an_s", comment: ""),
            portrait: "lg_an",
            pages: Array(),
            genre: .Fantasy,
            stars: .fourStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("lg_elp_t", comment: ""),
            author: "Laura Gallego",
            synopsis: NSLocalizedString("lg_elp_s", comment: ""),
            portrait: "lg_eldlp",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("ng_tp_t", comment: ""),
            author: "Noah Gordon",
            synopsis: NSLocalizedString("ng_tp_s", comment: ""),
            portrait: "ng_tp",
            pages: Array(),
            genre: .Historical_Fiction,
            stars: .fiveStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("ry_fw_t", comment: ""),
            author: "Rebecca Yarros",
            synopsis: NSLocalizedString("ry_fw_s", comment: ""),
            portrait: "ry_fw",
            pages: Array(),
            genre: .Fantasy,
            stars: .threeStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("jg_tfs_t", comment: ""),
            author: "John Green",
            synopsis: NSLocalizedString("jg_tfs_s", comment: ""),
            portrait: "jg_tfios",
            pages: Array(),
            genre: .Romance,
            stars: .fiveStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("sh_sb_t", comment: ""),
            author: "Arthur Conan Doyle",
            synopsis: NSLocalizedString("sh_sb_s", comment: ""),
            portrait: "acd_sh_sb",
            pages: Array(),
            genre: .Mystery,
            stars: .fourStar
        )
        
        allBooks.append(b)
        
        b = Book(
            name: NSLocalizedString("sh_es_t", comment: ""),
            author: "Arthur Conan Doyle",
            synopsis: NSLocalizedString("sh_es_s", comment: ""),
            portrait: "acd_sh_es",
            pages: Array(),
            genre: .Mystery,
            stars: .threeStar
        )
        
        allBooks.append(b)
    }
    
    func searchAllBooksByName(_ name: String) -> Array<Book>{
        var toReturn = Array<Book>()
        
        for book in allBooks{
            if(book.name.lowercased().contains(name.lowercased())){
                toReturn.append(book)
            }
        }
        
        return toReturn
    }
    
    func findBookByName(_ name : String) -> Book?{
        
        var toReturn : Book? = nil
        
        for book in allBooks{
            if(book.name.elementsEqual(name)){
                toReturn = book
                break
            }
        }
        
        return toReturn
    }
}

final class BoughtBooks{
    
    static let instance = BoughtBooks()
    
    var boughtBooks = Array<Book>()
    
    init(){
        boughtBooks.append(BookSourceData.instance.findBookByName(NSLocalizedString("hp1_t", comment: "")) ?? Book())
        
        boughtBooks.append(BookSourceData.instance.findBookByName(NSLocalizedString("hp2_t", comment: "")) ?? Book())
    }
    
    func addBook(newBook : Book){
        boughtBooks.append(newBook)
    }
    
    func searchBoughtBooksByName(_ name: String) -> Array<Book>{
        var toReturn = Array<Book>()
        
        for book in boughtBooks{
            if(book.name.lowercased().contains(name.lowercased())){
                toReturn.append(book)
            }
        }
        
        return toReturn
    }
    
    func findBookByName(_ name : String) -> Book?{
        
        var toReturn : Book? = nil
        
        for book in boughtBooks{
            if(book.name.elementsEqual(name)){
                toReturn = book
                break
            }
        }
        
        return toReturn
    }
}
