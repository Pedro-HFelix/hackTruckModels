//
//  footer.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 08/04/25.
//

import SwiftUI

import SwiftUI

import SwiftUI

struct Footer: View {
    @Binding var selectedTab: Tab

    var body: some View {
        ZStack {
            Color.whiteBlue
                .ignoresSafeArea()

            HStack(spacing: 40) {
                
                VStack(spacing: 4) {
                    Image(systemName: "fork.knife")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(selectedTab == .food ? .white : .lightRed)

                    Text("Alimentos")
                        .font(.callout)
                }
                .onTapGesture {
                    selectedTab = .food
                }

                VStack(spacing: 4) {
                    Image(systemName: "cross.case.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(selectedTab == .medicine ? .white : .skyBlue)

                    Text("Medicamentos")
                        .font(.callout)
                }
                .onTapGesture {
                    selectedTab = .medicine
                }

                VStack(spacing: 4) {
                    Image(systemName: "person.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 30, height: 30)
                        .foregroundColor(selectedTab == .profile ? .white : .pinkPurple)

                    Text("Perfil")
                        .font(.callout)
                }
                .onTapGesture {
                    selectedTab = .profile
                }
            }
        }
        .frame(height: 100)
    }
}

#Preview {
    Footer(selectedTab: .constant(.food))
}
