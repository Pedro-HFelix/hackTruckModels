//
//  DailyFood.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

struct DailyFood: Identifiable, Decodable {
    var id: Int?
    var date: String?
    var foodName: String?
    var foodId: Int?
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
