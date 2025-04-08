//
//  Medicine.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

struct Medicine: Identifiable, Decodable{
    
    var id: Int?
    var name: String?
    var description: String?
    var frequency: Int?
    var schedule: Date?
}
