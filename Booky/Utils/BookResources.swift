//
//  BookResources.swift
//  Booky
//
//  Created by Angel Terol on 14/11/23.
//

enum Stars : Int{
    case noStar
    case oneStar
    case twoStar
    case threeStar
    case fourStar
    case fiveStar
}

class Comment {
    var content : String? = nil
    var stars : Stars = .noStar
}

class Book{
    var name : String = ""
    var author: String = ""
    var synopsis : String = ""
    var portrait : String = ""
    var comments = Array<Comment>()
    var pages = Array<String>()
    var stars : Int = 0
    
    init(){
        
    }
    
    init(name : String, author : String, synopsis : String, portrait : String, comments : Array<Comment>, pages : Array<String>){
        self.name = name
        self.author = author
        self.synopsis = synopsis
        self.portrait = portrait
        self.comments = Array(comments)
        self.pages = Array(pages)
    }
}

final class BookSourceData{
    static let instance = BookSourceData()
    var allBooks = Array<Book>()
    
    private init(){
        
        var b_pages = [hp1_0, hp1_1, hp1_2, hp1_3]
        
        var b = Book(
            name: "Harry Potter and the Sorcerer's Stone",
            author: "J. K. Rowling",
            synopsis: "\"With trembling hands, Harry turned the envelope over and saw a purple wax seal with a coat of arms: a lion, an eagle, a badger, and a snake, surrounding a large letter H.\"\n Harry Potter had never heard of Hogwarts until letters began to fall through the mail slot of number 4 Privet Drive. They had the address written in green ink on a yellowish parchment envelope sealed with a purple wax seal, and his dreadful aunt and uncle hurried to confiscate them. Later, on the day Harry turns eleven, Rubeus Hagrid, a gigantic man whose eyes gleam like black beetles, bursts in with extraordinary news: Harry Potter is a wizard, and he has been granted a place at Hogwarts School of Witchcraft and Wizardry. An incredible adventure is about to begin!",
            portrait: "hp1",
            comments: Array(),
            pages: b_pages
        )
        
        allBooks.append(b)
        
        b_pages = [hp2_0, hp2_1, hp2_2, hp2_3]
        
        b = Book(
            name: "Harry Potter and the Chamber of Secrets",
            author: "J. K. Rowling",
            synopsis: "\"Harry Potter and the Chamber of Secrets,\" the second volume of the already classic series of fantasy novels by British author J.K. Rowling.\n \"There is a plot, Harry Potter. A plot to make the most terrible things happen this year at Hogwarts School of Witchcraft and Wizardry.\"\n Harry Potter's summer has included the worst birthday of his life, ominous warnings from a house-elf named Dobby, and a rescue from the Dursleys' house by his friend Ron Weasley driving a magical flying car. Back at Hogwarts School of Witchcraft and Wizardry, where he is starting his second year, Harry hears strange whispers echoing through the empty corridors. And then the attacks begin, and several students are found petrified. It seems that Dobby's sinister predictions are coming true.",
            portrait: "hp2",
            comments: Array(),
            pages: b_pages
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Harry Potter and the Prisoner of Azkaban",
            author: "J. K. Rowling",
            synopsis: "\"Welcome to the Knight Bus, emergency transport for the stranded wizard. Raise your wand, hop on board, and we'll take you wherever you want to go.\"\n When the Knight Bus bursts onto a dark street and screeches to a halt in front of Harry, a new school year at Hogwarts begins for him, full of extraordinary events. Sirius Black, a murderer and follower of Lord Voldemort, has escaped, and it is said he is after Harry. In his first Divination class, Professor Trelawney sees a death omen in the tea leaves of Harry's cup... But perhaps the most terrifying are the Dementors patrolling the school grounds, capable of sucking out your soul with their kiss...",
            portrait: "hp3",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Harry Potter and the Goblet of Fire",
            author: "J. K. Rowling",
            synopsis: "\"There will be three tasks, spaced throughout the school year, that will test the champions in many different ways: their magical abilities, their daring, their deductive skills, and, of course, their ability to navigate danger.\"\n The Triwizard Tournament is set to take place at Hogwarts. Only students aged seventeen and above can participate in this competition, but even so, Harry dreams of winning it. On Halloween, when the Goblet of Fire selects the champions, Harry is surprised to find that his name is one of those chosen by the magical goblet. During the tournament, he will have to face deadly challenges, dragons, and dark wizards, but with the help of Ron and Hermione, his best friends, he might just manage to come out alive!",
            portrait: "hp4",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Harry Potter and Order of the Phoenix",
            author: "J. K. Rowling",
            synopsis: "\"The headmaster believes it's not advisable for that to continue happening. He wants me to teach you how to close your mind to the Dark Lord.\"\n These are dark times for Hogwarts. After the Dementors' attack on his cousin Dudley, Harry Potter realizes that Voldemort will stop at nothing to find him. Many deny that the Dark Lord has returned, but Harry is not alone: a secret order gathers at Grimmauld Place to fight against the dark forces. Harry must allow Professor Snape to teach him how to defend himself from Voldemort's brutal intrusions into his mind. But these are becoming increasingly powerful, and time is running out for Harry...",
            portrait: "hp5",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Harry Potter and the Half-Blood Prince",
            author: "J. K. Rowling",
            synopsis: "\"At the age of sixteen, Harry begins the sixth year at Hogwarts amid terrible events plaguing England. Chosen as the captain of the Quidditch team, practices, exams, and girls occupy all his time, but the calm is short-lived.\"\n Despite the stringent security measures protecting the school, two students are brutally attacked. Dumbledore knows that the moment foretold by the prophecy is approaching, where Harry and Voldemort will face each other in a deadly duel: 'The one with the power to vanquish the Dark Lord approaches... One of them must die at the hands of the other, for neither can live while the other survives.'\n The elderly headmaster will seek Harry's help, and together they will undertake dangerous journeys to try to weaken the enemy. For this, the young wizard will rely on an old potions book belonging to a mysterious character, someone who calls themselves the Half-Blood Prince.",
            portrait: "hp6",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Harry Potter and the Deathly Hallows",
            author: "J. K. Rowling",
            synopsis: "\"Hand over Harry Potter,\" said Voldemort's voice, \"and no one will be harmed. Hand over Harry Potter, and I will leave the school intact. Hand over Harry Potter, and you will be rewarded.\"\n As he rides in the sidecar of Hagrid's motorcycle and soars into the sky, leaving Privet Drive for the last time, Harry Potter knows that Lord Voldemort and his Death Eaters are close. The protective enchantment that had kept Harry safe has been broken, but he can no longer hide. The Dark Lord is dedicated to terrorizing all those Harry holds dear, and to stop him, Harry must find and destroy the remaining Horcruxes. The ultimate battle must begin: Harry will have to rise up and confront his enemy...",
            portrait: "hp7",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
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
        boughtBooks.append(BookSourceData.instance.findBookByName("Harry Potter and the Sorcerer's Stone") ?? Book())
        
        boughtBooks.append(BookSourceData.instance.findBookByName("Harry Potter and the Chamber of Secrets") ?? Book())
    }
    
    func addBook(newBook : Book){
        boughtBooks.append(newBook)
    }
    
    func searchBoughtBooksByName(_ name: String) -> Array<Book>{
        var toReturn = Array<Book>()
        
        for book in boughtBooks{
            if(book.name.contains(name)){
                toReturn.append(book)
            }
        }
        
        return toReturn
    }
}
