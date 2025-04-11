//
//  User.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

struct User: Identifiable, Decodable{
    var id: Int?
    var name: String?
    var image: String?
    var age: Int?
    var weight: Float?
    var gender: Gender?
    
    enum Gender: String, Decodable {
        case Female, Male
    }
}
