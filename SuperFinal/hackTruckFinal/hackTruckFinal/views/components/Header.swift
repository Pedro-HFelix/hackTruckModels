//
//  Header.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

struct Header: View {
    @StateObject var userVM = UserViewModel()
    
    var body: some View {
        ZStack(alignment: .center) {
            Color.lightCyan
                .ignoresSafeArea()
            
            HStack(alignment: .center) {
                Image("profile image")
                    .resizable()
                    .scaledToFit()
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .frame(width: 64, height: 64)
                
                Text("Luke")
                    .font(.title3)
                    .bold()
            }.frame(maxWidth: .infinity, alignment: .leading)
                .padding(.horizontal)
            
        }
        .onAppear(){
            userVM.GETUser()
        }
        .frame(height: 50)
    }
}

#Preview {
    Header()
}
