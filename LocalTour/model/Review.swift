import Foundation

class Review {
    var text: String
    var score: Int
    var author: String

    init(text:String, score: Int, author: String){
        self.text = text
        self.score = score
        self.author = author
    }
}
