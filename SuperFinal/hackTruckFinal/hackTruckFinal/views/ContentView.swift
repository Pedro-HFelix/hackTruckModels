//
//  ContentView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import SwiftUI
//
//enum Tab {
//    case food
//    case medicine
//    case profile
//}

struct ContentView: View {
    @State private var selectedTab = 2
    @State private var selection = 1
    
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            VStack(spacing: 0) {
                Header()
                Group {
                    switch selectedTab {
                        case 0: FoodView()
                        case 1: MedicineView()
                        case 2: HomeView()
                        case 3: HistoryView()
                        case 4: PerfilView()
                        default: Text("Erro")
                    }
                }.padding(.top)
                Spacer()
                
                HStack {
                    Footer(index: 0, selectedTab: $selectedTab, icon: "fork.knife", color: .white)
                    Footer(index: 1, selectedTab: $selectedTab, icon: "pills.fill", color: .white)
                    Footer(index: 2, selectedTab: $selectedTab, icon: "house.fill", color: .white)
                    Footer(index: 3, selectedTab: $selectedTab, icon: "stopwatch.fill", color: .white)
                    Footer(index: 4, selectedTab: $selectedTab, icon: "person.fill", color: .white)
                }
                .frame(width: .infinity, height: 65)
                .background(Color(Color.green.opacity(0.6)))
                
            }
        }
    }
}

#Preview {
    ContentView()
}
