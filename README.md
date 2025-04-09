//
//  foodSheetView.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 09/04/25.
//

import SwiftUI

struct foodSheetView: View {
    @State private var selectPeriod: String = "Manhã"
    @State private var selectFood: String = ""
    @State private var searchText = ""
    
    let foods: [Food] = [
        Food(id: 1, name: "Arroz", description: "Cereal branco rico em carboidratos"),
        Food(id: 2, name: "Feijão", description: "Fonte de proteínas e fibras"),
        Food(id: 3, name: "Banana", description: "Fruta rica em potássio"),
        Food(id: 4, name: "Maçã", description: "Fruta doce com casca vermelha ou verde"),
        Food(id: 5, name: "Pão francês", description: "Pão crocante tradicional de padarias"),
        Food(id: 6, name: "Carne bovina", description: "Fonte de proteína animal"),
        Food(id: 7, name: "Frango grelhado", description: "Peito de frango preparado na grelha"),
        Food(id: 8, name: "Batata", description: "Tubérculo versátil e energético"),
        Food(id: 9, name: "Tomate", description: "Fruto vermelho usado como legume"),
        Food(id: 10, name: "Alface", description: "Folha verde usada em saladas")
    ]
    
    var searchResults: [Food] {
            if searchText.isEmpty {
                return foods
            } else {
                return foods.filter { $0.name!.contains(searchText) }
            }
    }


    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            
            VStack(alignment: .leading, spacing: 20) {
                
                VStack{
                    Text("Lista de Alimentos")
                        .font(.title)
                        .bold()
                    
                    Text("Escolha um Período")
                        .font(.title3)
                    Picker("Escolha um período", selection: $selectPeriod) {
                        ForEach(Period.allCases, id: \.rawValue) { p in
                            Text(p.rawValue).tag(p.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                ScrollView{
                    
                    ForEach(searchResults) { f in
                        HStack {
                            Text(f.name!)
                                .font(.title3)
                            
                            Spacer()
                            
                            Button(action: {
                                selectFood = f.name!
                                
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 16)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(8)
                        .background(Color.whiteBlue)
                        .cornerRadius(12)
                        .padding(4)
                    }
                }
                
                
            }
            .padding()
        }
    }
}

#Preview {
    foodSheetView()
}
