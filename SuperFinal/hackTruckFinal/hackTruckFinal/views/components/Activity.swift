//
//  Activity.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 11/04/25.
//

import SwiftUI

struct Activity: View {
    @State var isChecked : Bool = false
    var body: some View {
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
}

#Preview {
    Activity()
}
