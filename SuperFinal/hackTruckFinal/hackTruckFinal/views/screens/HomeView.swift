//
//  FoodView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

func isToday(_ dateString: String) -> Bool {
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yy"
    formatter.locale = Locale(identifier: "pt_BR")
    
    guard let date = formatter.date(from: dateString) else {
        return false
    }
    
    let calendar = Calendar.current
    return calendar.isDateInToday(date)
}


struct HomeView: View {
    @StateObject var viewModel = DailyFoodViewModel()
    
    
    var body: some View {
        ZStack {
            
            Color.lightCyan
                .ignoresSafeArea()
            
            ScrollView {
                VStack(alignment: .leading) {
                    VStack(alignment: .leading) {
                        Text("Atividades diarias")
                            .font(.title).bold()
                        Water()
                        HStack(spacing: 21) {
                            Activity()
                        }
                        .padding()
                        .frame(width: 349, height: 80)
                        .background(
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.softGreen)
                        )
                    }
                    VStack(alignment: .leading, spacing: 12) {
                        Spacer()
                        Text("Manhã:").bold()
                            .font(.title)
                        
                        ForEach(viewModel.foods.filter { $0.period == .manha && isToday($0.date!)}) { food in
                            
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
                        
                        Text("Tarde:").bold()
                            .font(.title)
                            .padding(.top, 8)
                        
                        ForEach(viewModel.foods.filter { $0.period == .tarde && isToday($0.date!)}) { food in
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
                        
                        Text("Noite:").bold()
                            .font(.title)
                            .padding(.top, 8)
                        
                        ForEach(viewModel.foods.filter { $0.period == .noite && isToday($0.date!)}) { food in
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
        }.onAppear {
            viewModel.getDaily()
            //            let sortedFoods = viewModel.foods.sorted {
            //                ($0.name! ?? "") < ($1.name ?? "")
            //            }
        }
    }
}

#Preview {
    HomeView()
}
