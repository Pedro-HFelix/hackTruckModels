//
//  Water.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 10/04/25.
//

import SwiftUI

struct Water: View {
    @State var totalWater : Int = 0
    var bgcAgua : [Color] {
        if totalWater == 0 {
            return [.gray, .gray, .gray, .gray]
        } else if totalWater < 500 {
            return [.white, .gray, .gray, .gray]
        } else if totalWater >= 500 && totalWater < 1000 {
            return [.lightBlue2, .white, .gray, .gray]
        } else if totalWater >= 1000 && totalWater < 1500 {
            return [.lightBlue1, .lightBlue2, .white, .gray]
        } else if totalWater >= 1500 && totalWater < 2000 {
            return [.lightBlue1, .lightBlue1, .lightBlue2, .white]
        } else if totalWater >= 2000 {
            return [.lightBlue1, .lightBlue1, .lightBlue1, .lightBlue1]
        } else {
            return [.gray, .gray, .gray, .gray]
        }
    }
    var body: some View {
        HStack {
            Button(action: {
                if totalWater >= 250 {
                    totalWater -= 250
                }
            }) {
                Image(systemName: "minus")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 24, height: 24)
                    .foregroundColor(.black)
            }
            
            Spacer()
            
            Text("Beba Água")
                .foregroundColor(.black)
                .font(.headline)
            
            Spacer()
            
            Button(action: {
                if totalWater <= 5750 {
                    totalWater += 250
                }
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
                .fill(LinearGradient(gradient: Gradient(colors: bgcAgua), startPoint: .leading, endPoint: .trailing))
        )
    }
}

#Preview {
    Water()
}
