//
//  AtividadesDiarias.swift
//  projeFinalEntidadesRotas
//
//  Created by Turma01-22 on 04/04/25.
//

import Foundation


struct DailyActivitie: Identifiable, Decodable{
    var id: Int?
    var name: String?
    var isCompleted: Bool? = false
    var date: Date?
}
