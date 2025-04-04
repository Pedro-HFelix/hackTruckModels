//
//  FoodView.swift
//  rascunho
//
//  Created by Turma01-16 on 04/04/25.
//

import SwiftUI

struct FoodView: View {
    
    var alimentos : [String] = [
        "Arroz",
        "Feijão",
        "Frango",
        "Batata",
        "Alface",
        "Tomate",
        "Maçã",
        "Banana",
        "Queijo",
        "Pão",
        "Peixe",
        "Cenoura",
        "Abóbora",
        "Couve",
        "Manteiga"
    ]

    
    var body: some View {
        List(alimentos, id: \.self) { food in
            Text(food)
            
        }
    }
}

#Preview {
    FoodView()
}
