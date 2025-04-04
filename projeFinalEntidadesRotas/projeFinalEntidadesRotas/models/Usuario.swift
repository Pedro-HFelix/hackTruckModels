import Foundation

struct Usuario: Identifiable, Decodable{
    var id: Int?
    var nome: String?
    var idade: Int?
    var peso: Float?
    var sexo: Sexo?
    
    enum Sexo: String, Decodable {
        case mulher, homem
    }
}
