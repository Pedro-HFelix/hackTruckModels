//
//  FoodView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

struct FoodView: View {
    
    @Binding var text: String
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            
            VStack {
                
                Text(text)
                Text(text)
                Text(text)
                Text(text)
                Text(text)
            }
        }
    }
}

#Preview {
    FoodView(text: .constant("FoodView"))
}
