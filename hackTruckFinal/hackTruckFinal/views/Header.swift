//
//  Header.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

struct Header: View {
    @Binding var userName: String
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.whiteBlue
                .ignoresSafeArea()
            
            HStack(alignment: .center) {
                Image("png")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 64, height: 64)
                
                Text(userName)
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .bold()
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
        }.frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    Header(userName: .constant("Pedro Henrique Félix"))
}
