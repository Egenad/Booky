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

enum Genre : String{
    case Fantasy
    case Historical_Fiction
    case Mystery
    case Romance
    case SciFi
}

enum Language : String{
    case English
    case Spanish
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
        
        b = Book(
            name: "Tress of the Emerald Sea",
            author: "Brandon Sanderson",
            synopsis: "In her native island over an emerald green ocean, the only life Braids knows is simple, marked by the pleasure of collecting mugs brought by sailors from distant lands and listening to the stories told by her friend Charlie. But when Charlie's father takes him on a ship to find him a wife and a disaster occurs, Braids must sneak aboard as a stowaway on a ship and set sail in search of the sorceress who dwells in the deadly Midnight Sea. Over oceans of spores teeming with pirates, can Braids leave her peaceful life behind and carve a place for herself in an ocean where a single drop can mean instant death?",
            portrait: "bs_tes",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Frugal Wizard's Handbook for Surviving Medieval England",
            author: "Brandon Sanderson",
            synopsis: "A man awakens in a clearing in a forest that appears to be medieval England, with no memory of who he is, where he comes from, or why he is there. Pursued by a group from his own time, his only chance of survival lies in recovering his lost memory, gaining allies among the local people, and perhaps even relying on their superstitious beliefs. His only aid from the \"real world\" should have been a manual titled \"The Frugal Wizard's Guide to Surviving Medieval England,\" but the copy he had exploded in transit. The few fragments he managed to rescue provide clues about his situation, but will he be able to connect the dots in time to survive?",
            portrait: "bs_tfwh",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Yumi and the Nightmare Painter",
            author: "Brandon Sanderson",
            synopsis: "Yumi comes from a land of gardens, meditation, and spirits, while Pintor lives in a world of darkness, technology, and nightmares. When suddenly their lives become strangely intertwined, can they set aside their differences and collaborate to uncover the mysteries of their situation and save their respective communities from certain disaster?",
            portrait: "bs_yatnp",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Sunlit Man",
            author: "Brandon Sanderson",
            synopsis: "Years ago he had comrades in arms and a cause to believe in, but now the man who calls himself Nomad knows only a life on the run. Forced to hop from world to world in the C osmere whenever the relentless Night Brigade gets too close, Nomad lands on a new planet and is instantly caught up in the struggle between a tyrant and the rebels who want only to escape being turned into mindless slaves-all under the constant threat of a sunrise whose heat will melt the very stones. Unable to understand the language, can he navigate the conflict and gain enough power to leap offworld before his mind or body pay the ultimate price?",
            portrait: "bs_sm",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Alas de Fuego",
            author: "Laura Gallego",
            synopsis: "The young queen Marla is the sovereign of a radiant nation. Ahriel, a female angel, has been by her side since birth, with the mission to protect and guide her, and to maintain balance among the human realms. However, when Ahriel uncovers a conspiracy to initiate a bloody war, she is betrayed and imprisoned with her wings rendered useless in the horrifying Gorlian prison—a primitive and brutal world from which no one has ever escaped. Ahriel must not only learn to survive in Gorlian but also to see things from the human perspective... from ground level.",
            portrait: "lg_af",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Alas Negras",
            author: "Laura Gallego",
            synopsis: "The female angel Ahriel has regained her freedom and achieved her revenge, but there is still something she must do. After going to account to her peers in the City of Clouds, she is set to resume the search for the magical prison of Gorlian to retrieve what she left behind when she escaped. She is determined to do whatever it takes to find it, even interrogate the only person who knows where it is hidden. Getting to her won't be easy, but Ahriel won't be alone this time...",
            portrait: "lg_an",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "El Libro de los Portales",
            author: "Laura Gallego",
            synopsis: "The painters of the Academy of Portals are the only ones who know how to draw the extraordinary travel portals that constitute Darusia's most important communication and transportation network. Their strict rules and thorough training ensure impeccable professionalism and technical perfection in all their work. When Tabit, a final-year student at the Academy, is tasked with painting a portal for a humble peasant, he does not imagine that he is about to become entangled in a plot of intrigues and secrets that could shake the very foundations of the institution.",
            portrait: "lg_eldlp",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Physician",
            author: "Noah Gordon",
            synopsis: "England, 11th century. At the age of nine, after the death of his mother and the loss of his home, Rob J. Cole realizes he has an extraordinary gift: by touching a person, he can determine whether they are near death or not. Under the guidance of Henry Croft, a barber surgeon who travels the country practicing as a healer, his gift grows, along with his passion for medicine.After his mentor's death, Rob continues the business, but an encounter with Benjamin Merlin, a Jewish physician who speaks to him about the eminent doctor from distant Persia, Ibn Sina or Avicenna, inspires him to pursue his dream. Driven by his passion for healing and determined to overcome any obstacle, Rob will travel to the East, posing as a Jew and immersing himself in new languages, ready to study medicine at the madrasa of Isfahan. There, he will shape his destiny and that of his family forever.",
            portrait: "ng_tp",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "Fourth Wing",
            author: "Rebecca Yarros",
            synopsis: "Violet Sorrengail believed she would join the Scribe Quadrant to live a peaceful life. However, by her mother's orders, she must join the thousands of candidates at the Basgiath War College who vie for a spot in Navarre's elite: the Dragon Rider Quadrant. Being smaller and frailer than the others puts her life in danger because dragons don't bond with weak humans. Additionally, with more riders than dragons available, many would kill her to improve their chances of success. There are others, like the ruthless Xaden Riorson, the most powerful wing leader in the Dragon Rider Quadrant, who would murder her simply for being the daughter of the general commander. To survive, she'll need to make the most of her wit. As the war becomes deadlier, Violet suspects that Navarre's leaders are hiding a terrible secret...",
            portrait: "ry_fw",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Fault In Our Stars",
            author: "John Green",
            synopsis: "Emotional, ironic, and sharp. A novel tinted with humor and tragedy that speaks to our ability to dream even in the most challenging circumstances. Hazel and Gus would like to have more ordinary lives. Some would say they weren't born under a lucky star, that their world is unfair. Hazel and Gus are just teenagers, but if cancer has taught them anything, it's that there's no time for regrets because, like it or not, there is only today and now. And so, with the intention of fulfilling Hazel's greatest wish—to meet her favorite author—they will cross the Atlantic together to live a race against time, as cathartic as it is heartbreaking. Destination: Amsterdam, the place where the enigmatic and grumpy writer resides, the only person who might help them put together the pieces of the enormous puzzle they are a part of.",
            portrait: "jg_tfios",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Sherlock Holmes: El Sabueso de los Baskerville",
            author: "Arthur Conan Doyle",
            synopsis: "1889, Devonshire, northwest England. Sir Charles Baskerville's corpse is discovered on a path near his house. When Sherlock Holmes is called in to solve the mystery, he observes that what seemed like a simple crime hides a curse that dates back centuries: since the ancestor of Sir Charles, Hugo de Baskerville, was killed by a giant hound, the death of his descendants has been preceded by the appearance of a demonic dog. Indeed, the tracks of an enormous creature appear next to Sir Charles's body. What lies behind the legend of the Baskervilles?",
            portrait: "acd_sh_sb",
            comments: Array(),
            pages: Array()
        )
        
        allBooks.append(b)
        
        b = Book(
            name: "The Sherlock Holmes: Estudio en Escarlata",
            author: "Arthur Conan Doyle",
            synopsis: "Retired military surgeon John Watson returns to London in search of a quiet place to enjoy his retirement. However, his journey leads him to 221B Baker Street, where he meets Sherlock Holmes, an eccentric character who will become the most famous detective of all time. With Holmes, Watson becomes entangled in the investigation of a mysterious murder. The corpse of a man has appeared in an empty house. Although the body shows no apparent wounds, an enigmatic message can be read on the wall of the room next to it: \"Rache.\"",
            portrait: "acd_sh_es",
            comments: Array(),
            pages: Array()
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
        boughtBooks.append(BookSourceData.instance.findBookByName("Harry Potter and the Sorcerer's Stone") ?? Book())
        
        boughtBooks.append(BookSourceData.instance.findBookByName("Harry Potter and the Chamber of Secrets") ?? Book())
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
}
