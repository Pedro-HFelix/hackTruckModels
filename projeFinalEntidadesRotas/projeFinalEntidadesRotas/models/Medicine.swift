//
//  Medicamentos.swift
//  projeFinalEntidadesRotas
//
//  Created by Turma01-22 on 04/04/25.
//

import Foundation

struct Medicine: Identifiable, Decodable{
    
    var id: Int?
    var name: String?
    var description: String?
    var frequency: Int?
    var schedule: Date?
}
