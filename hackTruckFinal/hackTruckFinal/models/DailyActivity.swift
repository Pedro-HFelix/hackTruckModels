//
//  DailyActivitie.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

struct DailyActivity: Identifiable, Decodable{
    var id: Int?
    var name: String?
    var isCompleted: Bool? = false
    var date: Date?
}
