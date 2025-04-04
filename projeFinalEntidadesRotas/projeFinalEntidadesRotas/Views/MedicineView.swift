//
//  medicineView.swift
//  rascunho
//
//  Created by Turma01-16 on 04/04/25.
//

import SwiftUI

struct medicineView: View {
    
    var medicamentos : [String] = [
        "Paracetamol",
        "Ibuprofeno",
        "Amoxicilina",
        "Dipirona",
        "Losartana",
        "Omeprazol",
        "Loratadina",
        "Simvastatina",
        "Metformina",
        "Furosemida",
        "Aspirina",
        "Ranitidina",
        "Cloridrato de Sertralina",
        "Atorvastatina",
        "Lisinopril"
    ]
    var body: some View {
        List(medicamentos, id: \.self) { med in
            Text(med)
            
        }
    }
}

#Preview {
    medicineView()
}
