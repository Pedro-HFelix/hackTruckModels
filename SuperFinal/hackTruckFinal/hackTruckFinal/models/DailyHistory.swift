//
//  History.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 09/04/25.
//

import Foundation


struct DailyHistory: Identifiable, Decodable, Encodable {
    var id: Int?
    var date: Date?
    var water: DailyWater?
    var foods: [DailyFood]?
    var activities: [DailyActivity]?
}
