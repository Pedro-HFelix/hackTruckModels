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
    let index: Int
    @Binding var selectedTab: Int
//    let label: String
    let icon: String
    let color: Color
    
    var body: some View {
        ZStack{
            selectedTab == index ? Color.darkGrayGreen : nil
            HStack{
                Spacer()
                Button(action: {
                    selectedTab = index
                }) {
                    VStack {
                        Image(systemName: icon)
                            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                            .foregroundColor(selectedTab != index ? color : .white)
                    }
                    //                .frame()
                    .padding(.horizontal)
                }
                Spacer()
            }
        }
    }
}
