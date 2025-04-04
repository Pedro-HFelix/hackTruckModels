import Foundation

struct User: Identifiable, Decodable{
    var id: Int?
    var name: String?
    var age: Int?
    var weight: Float?
    var gender: Gender?
    
    enum Gender: String, Decodable {
        case Female, Male
    }
}
