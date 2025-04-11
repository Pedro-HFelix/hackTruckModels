//
//  medicineView.swift
//  rascunho
//
//  Created by Turma01-16 on 04/04/25.
//

import SwiftUI

struct MedicineView: View {
    
    let medicamentos : [String] = [
        "Paracetamol",
        "Ibuprofeno",
        "Amoxicilina",
        "Dipirona",
        "Losartana",
        "Ranitidina",
        "Azitromicina",
        "Lorazepam",
        "Metformina",
        "Omeprazol",
        "Simvastatina",
        "Alprazolam",
        "Cloridrato de Sertralina",
        "Dextrometorfano",
        "Fluoxetina",
        "Cetoconazol",
        "Carbamazepina",
        "Loratadina",
        "Clindamicina",
        "Furosemida"
    ]
    
    @State var selectMedicine : String = ""
    
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            VStack {
                
                
                Text("Lista de Medicamentos")
                    .font(.title)
                    .bold()
                Text("Escolha um Período")
                    .font(.title3)
                
                ScrollView{
                    ForEach(medicamentos, id: \.self) { m in
                        HStack {
                            Text(m)
                                .font(.title3)
                            
                            Spacer()
                            
                            Button(action: {
                                selectMedicine = m
                                
                            }) {
                                Image(systemName: "info")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 8)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(8)
                        .background(Color.lightBlue3.opacity(0.3))
                        .cornerRadius(8)
                        .padding(4)
                        .shadow(color: .black.opacity(0.2), radius: 4)
                    }.padding()
                }
            }
        }
    }
}

#Preview {
    MedicineView()
}
