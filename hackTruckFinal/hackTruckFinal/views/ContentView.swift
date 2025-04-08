//
//  ContentView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import SwiftUI

enum Tab {
    case food
    case medicine
    case profile
}

struct ContentView: View {
    @State private var selectedTab: Tab = .food
    @State private var name: String = "Pedro Henrique Félix"
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Header(userName: $name)
                
                
                switch selectedTab {
                    case .food:
                        FoodView(text: .constant("FoodView"))
                    case .medicine:
                        FoodView(text: .constant("MedicineView"))
                    case .profile:
                        FoodView(text: .constant("ProfileView"))
                }
                
                Footer(selectedTab: $selectedTab)
                
                }
            }
            
        }
}

#Preview {
    ContentView()
}
