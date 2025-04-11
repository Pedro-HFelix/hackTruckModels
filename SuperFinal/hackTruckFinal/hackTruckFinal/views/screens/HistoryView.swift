//
//  History.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 09/04/25.
//

import SwiftUI


func formattedDayName(date: Date?) -> String {
    guard let date = date else { return "Dia desconhecido" }
    let formatter = DateFormatter()
    formatter.locale = Locale(identifier: "pt_BR")
    formatter.dateFormat = "EEEE"
    return formatter.string(from: date).capitalized
}

func formattWater(water: DailyWater) -> String{
    let litros = Double(water.quantity!) / 1000
    return String(format: "%.1f", litros).replacingOccurrences(of: ".", with: ",")
}

struct SheetView: View {
    let daily: DailyHistory

    var body: some View {
        ZStack {
            Color.white
                .ignoresSafeArea()
            VStack(alignment: .leading ,spacing: 20) {
                
                Text(daily.date!
                    .formatted(.dateTime.day().month(.wide).year().locale(Locale(identifier: "pt"))))
                .font(.largeTitle)
                
                

                VStack(alignment: .leading , spacing: 10) {
                    HStack {
                        Text("Quantidade de água bebida:").bold()
                        Text("\(formattWater(water: daily.water!)) L")
                        Image(systemName: "drop.fill")
                            .foregroundColor(.lightBlue3.opacity(0.3))
                    }
                    HStack {
                        Text("Atividade física:").bold()
                        if daily.activities![0].isCompleted! == true {
                            Text("Concluída")
                            Image(systemName: "dumbbell.fill")
                                .foregroundColor(.purple)
                        } else {
                            Text("Não concluída")
                            Image(systemName: "dumbbell")
                                .foregroundColor(.black)
                        }
                    }
                    Spacer()
                    HStack {
                        Text("Alimentos").bold().font(.title)
                        Image(systemName: "fork.knife")
                            .foregroundColor(.red)
                    }

                    ScrollView {
                        VStack(alignment: .leading) {
                            ForEach(daily.foods!) { f in
                                Text("- \(f.foodName!)")
                                Divider()
                            }
                        }
                    }

                }
                
                Spacer()
            }
            .padding()
        }
    }
}

struct HistoryView: View {
    let weekHistory: [DailyHistory] = [
        DailyHistory(
            id: 1,
            date: Calendar.current.date(from: DateComponents(year: 2025, month: 4, day: 6)), // Domingo
            water: DailyWater(id: 1, quantity: 1500, date: Date()),
            foods: [
                DailyFood(id: 1, date: "06/04/25", foodName: "Pão", period: .manha),
                DailyFood(id: 2, date: "06/04/25", foodName: "Café", period: .manha),
                DailyFood(id: 3, date: "06/04/25", foodName: "Maçã", period: .manha),
                DailyFood(id: 4, date: "06/04/25", foodName: "Arroz", period: .tarde),
                DailyFood(id: 5, date: "06/04/25", foodName: "Feijão", period: .tarde),
                DailyFood(id: 6, date: "06/04/25", foodName: "Frango", period: .tarde),
                DailyFood(id: 7, date: "06/04/25", foodName: "Salada", period: .tarde),
                DailyFood(id: 8, date: "06/04/25", foodName: "Banana", period: .noite),
                DailyFood(id: 9, date: "06/04/25", foodName: "Suco", period: .noite),
                DailyFood(id: 10, date: "06/04/25", foodName: "Iogurte", period: .noite)
            ],
            activities: [
                DailyActivity(id: 1, name: "Atividade Física", isCompleted: true, date: Date())
            ]
        ),
        DailyHistory(
            id: 2,
            date: Calendar.current.date(from: DateComponents(year: 2025, month: 4, day: 7)), // Segunda
            water: DailyWater(id: 2, quantity: 1200, date: Date()),
            foods: [
                DailyFood(id: 11, date: "07/04/25", foodName: "Torrada", period: .manha),
                DailyFood(id: 12, date: "07/04/25", foodName: "Leite", period: .manha),
                DailyFood(id: 13, date: "07/04/25", foodName: "Ovo cozido", period: .manha),
                DailyFood(id: 14, date: "07/04/25", foodName: "Macarrão", period: .tarde),
                DailyFood(id: 15, date: "07/04/25", foodName: "Molho vermelho", period: .tarde),
                DailyFood(id: 16, date: "07/04/25", foodName: "Carne moída", period: .tarde),
                DailyFood(id: 17, date: "07/04/25", foodName: "Beterraba", period: .tarde),
                DailyFood(id: 18, date: "07/04/25", foodName: "Mamão", period: .noite),
                DailyFood(id: 19, date: "07/04/25", foodName: "Chá", period: .noite),
                DailyFood(id: 20, date: "07/04/25", foodName: "Tapioca", period: .noite)
            ],
            activities: [
                DailyActivity(id: 2, name: "Atividade Física", isCompleted: true, date: Date())
            ]
        ),
        DailyHistory(
            id: 3,
            date: Calendar.current.date(from: DateComponents(year: 2025, month: 4, day: 8)), // Terça
            water: DailyWater(id: 3, quantity: 1800, date: Date()),
            foods: [
                DailyFood(id: 21, date: "08/04/25", foodName: "Cuscuz", period: .manha),
                DailyFood(id: 22, date: "08/04/25", foodName: "Melão", period: .manha),
                DailyFood(id: 23, date: "08/04/25", foodName: "Café com leite", period: .manha),
                DailyFood(id: 24, date: "08/04/25", foodName: "Purê de batata", period: .tarde),
                DailyFood(id: 25, date: "08/04/25", foodName: "Bife acebolado", period: .tarde),
                DailyFood(id: 26, date: "08/04/25", foodName: "Cenoura", period: .tarde),
                DailyFood(id: 27, date: "08/04/25", foodName: "Refrigerante", period: .tarde),
                DailyFood(id: 28, date: "08/04/25", foodName: "Mingau", period: .noite),
                DailyFood(id: 29, date: "08/04/25", foodName: "Granola", period: .noite),
                DailyFood(id: 30, date: "08/04/25", foodName: "Bolacha de água e sal", period: .noite)
            ],
            activities: [
                DailyActivity(id: 3, name: "Atividade Física", isCompleted: true, date: Date())
            ]
        ),
        DailyHistory(
            id: 4,
            date: Calendar.current.date(from: DateComponents(year: 2025, month: 4, day: 9)), // Quarta
            water: DailyWater(id: 4, quantity: 1000, date: Date()),
            foods: [
                DailyFood(id: 31, date: "09/04/25", foodName: "Bolo de cenoura", period: .manha),
                DailyFood(id: 32, date: "09/04/25", foodName: "Suco de laranja", period: .manha),
                DailyFood(id: 33, date: "09/04/25", foodName: "Pão de queijo", period: .manha),
                DailyFood(id: 34, date: "09/04/25", foodName: "Lasagna", period: .tarde),
                DailyFood(id: 35, date: "09/04/25", foodName: "Peixe assado", period: .tarde),
                DailyFood(id: 36, date: "09/04/25", foodName: "Brócolis", period: .tarde),
                DailyFood(id: 37, date: "09/04/25", foodName: "Água de coco", period: .tarde),
                DailyFood(id: 38, date: "09/04/25", foodName: "Sopa de legumes", period: .noite),
                DailyFood(id: 39, date: "09/04/25", foodName: "Pipoca", period: .noite),
                DailyFood(id: 40, date: "09/04/25", foodName: "Biscoito integral", period: .noite)
            ],
            activities: [
                DailyActivity(id: 4, name: "Atividade Física", isCompleted: false, date: Date())
            ]
        ),
        DailyHistory(
            id: 5,
            date: Calendar.current.date(from: DateComponents(year: 2025, month: 4, day: 10)), // Quinta
            water: DailyWater(id: 1, quantity: 3500, date: Date()),
            foods: [
                DailyFood(id: 1, date: "10/04/25", foodName: "Pão", period: .manha),
                DailyFood(id: 2, date: "10/04/25", foodName: "Café", period: .manha),
                DailyFood(id: 3, date: "10/04/25", foodName: "Maçã", period: .manha),
                DailyFood(id: 4, date: "10/04/25", foodName: "Arroz", period: .tarde),
                DailyFood(id: 5, date: "10/04/25", foodName: "Feijão", period: .tarde),
                DailyFood(id: 6, date: "10/04/25", foodName: "Frango", period: .tarde),
                DailyFood(id: 7, date: "10/04/25", foodName: "Salada", period: .tarde),
                DailyFood(id: 8, date: "10/04/25", foodName: "Banana", period: .noite),
                DailyFood(id: 9, date: "10/04/25", foodName: "Suco", period: .noite),
                DailyFood(id: 10, date: "10/04/25", foodName: "Iogurte", period: .noite),
                DailyFood(id: 10, date: "10/04/25", foodName: "café", period: .manha)
            ],
            activities: [
                DailyActivity(id: 1, name: "Atividade Física", isCompleted: false, date: Date())
            ]
        ),
    ]
    
    @State private var selectedDay: DailyHistory?
    
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            
            VStack{
                Text("Histórico")
                    .font(.title)
                    .bold()
                
                ScrollView {
                    VStack(spacing: 16) {
                        ForEach(weekHistory) { history in
                            Button(action: {
                                selectedDay = history
                            }) {
                                HStack {
                                    Text(history.date!
                                        .formatted(.dateTime.weekday(.wide).locale(Locale(identifier: "pt_BR")))
                                        .capitalized)
                                        .font(.headline)
                                    Spacer()
                                    Image(systemName: "chevron.right")
                                        .foregroundColor(.gray)
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(Color.lightBlue3.opacity(0.3))
                                .cornerRadius(12)
                                .foregroundColor(.black)
                            }
                        }
                    }
                    .padding()
                }
                .sheet(item: $selectedDay) { day in
                    SheetView(daily: day)
                }
            }
        }
    }
}

#Preview {
    HistoryView()
}
