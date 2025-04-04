//
//  DailyFood.swift
//  projeFinalEntidadesRotas
//
//  Created by Turma01-22 on 04/04/25.
//

import Foundation

struct DailyFood: Identifiable, Decodable {
    var id: Int?
    var date: String?
    var foods: [Food]?
}
