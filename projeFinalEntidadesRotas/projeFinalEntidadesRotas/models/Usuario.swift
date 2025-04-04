import Foundation

struct Usuario: Identifiable, Decodable{
    var id: Int?
    var nome: String?
    var date: Int?
    var peso: Float?
    var sexo: Char?
}
