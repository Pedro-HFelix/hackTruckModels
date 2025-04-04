//
//  Alimentos.swift
//  projeFinalEntidadesRotas
//
//  Created by Turma01-22 on 04/04/25.
//

import Foundation

struct Food: Identifiable, Decodable {
    var id: Int?
    var name: String?
    var description: String?
    var period: Period?
}

enum Period: String, CaseIterable, Codable {
    case manha = "Manhã"
    case tarde = "Tarde"
    case noite = "Noite"
    
    var localizedDescription: String {
        return self.rawValue
    }
}
