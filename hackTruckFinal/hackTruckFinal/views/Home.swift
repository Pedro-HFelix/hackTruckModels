//
//  FoodView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

struct Home: View {
    @State var isChecked = false
    @State private var showingSheet = false
    @State var dailyFoods: [DailyFood] = [
        DailyFood(id: 1, date: "2025-04-08", foodName: "Ovos", period: .manha),
        DailyFood(id: 2, date: "2025-04-08", foodName: "Maçã", period: .tarde),
        DailyFood(id: 3, date: "2025-04-08", foodName: "Arroz", period: .noite),
        DailyFood(id: 4, date: "2025-04-08", foodName: "Iogurte",  period: .manha),
        DailyFood(id: 5, date: "2025-04-08", foodName: "Sanduíche", period: .tarde),
        DailyFood(id: 6, date: "2025-04-08", foodName: "Sopa", period: .noite),
        DailyFood(id: 7, date: "2025-04-08", foodName: "Café com leite", period: .manha),
        DailyFood(id: 8, date: "2025-04-08", foodName: "Banana", period: .tarde),
        DailyFood(id: 9, date: "2025-04-08", foodName: "Feijão", period: .noite),
        DailyFood(id: 10, date: "2025-04-08", foodName: "Torrada", period: .manha)
    ]
    
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            
            ScrollView {
                
                VStack(alignment: .leading) {
                    
                    VStack(alignment: .leading) {
                        Text("Atividades diarias")
                            .font(.title)
                        
                        HStack {
                            
                            Button(action: {
                                print("aumentar água")
                            }) {
                                Image(systemName: "minus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                            }
                            
                            Spacer()
                            
                            Text("Beber Água")
                                .foregroundColor(.black)
                                .font(.headline)
                            
                            
                            Spacer()
                            
                            Button(action: {
                                print("diminuit água")
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 24, height: 24)
                                    .foregroundColor(.black)
                            }
                            
                        }
                        .padding()
                        .frame(width: 349, height: 80)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.customLinearGradient)
                        )
                        
                        
                        
                        HStack(spacing: 21) {
                            
                            Button(action: {
                                isChecked.toggle()
                            }) {
                                Image(systemName: "checkmark")
                                    .font(.system(size: 16, weight: .bold))
                                    .foregroundColor(isChecked ? .black : .clear)
                                    .frame(width: 28, height: 28)
                                    .background(
                                        RoundedRectangle(cornerRadius: 12)
                                            .fill(Color.white)
                                    )
                            }
                            
                            
                            Text("Atividade Física")
                                .foregroundColor(.black)
                                .font(.headline)
                            
                            
                            Spacer()
                            
                        }
                        .padding()
                        .frame(width: 349, height: 80)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.softGreen)
                        )
                        
                    }
                    
                    VStack(alignment: .leading, spacing: 12) {
                        
                        Text("Manhã:")
                            .font(.title)
                        
                        ForEach(dailyFoods.filter { $0.period == .manha }) { food in
                            
                                HStack(alignment: .center) {
                                    Text("\(food.foodName ?? "Alimento")")
                                        .font(.body)
                                    
                                    Spacer()
                                    
                                }
                                .padding()
                                .frame(width: 349, height: 60)
                                .background(
                                    RoundedRectangle(cornerRadius: 12)
                                        .fill(Color.randomPaletteColor())
                                )
                            
                        }
                        
                        Text("Tarde:")
                            .font(.title)
                            .padding(.top, 8)
                        
                        ForEach(dailyFoods.filter { $0.period == .tarde }) { food in
                            HStack(alignment: .center) {
                                Text("\(food.foodName ?? "Alimento")")
                                    .font(.body)
                                
                                Spacer()
                            }
                            .padding()
                            .frame(width: 349, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.randomPaletteColor())
                            )
                        }
                        
                        Text("Noite:")
                            .font(.title)
                            .padding(.top, 8)
                        
                        ForEach(dailyFoods.filter { $0.period == .noite }) { food in
                            HStack(alignment: .center) {
                                Text("\(food.foodName ?? "Alimento")")
                                    .font(.body)
                                
                                Spacer()
                            }
                            .padding()
                            .frame(width: 349, height: 60)
                            .background(
                                RoundedRectangle(cornerRadius: 12)
                                    .fill(Color.randomPaletteColor())
                            )
                        }
                    }
                    
                    
                }.padding()
            }
        }
    }
}

#Preview {
    Home()
}
