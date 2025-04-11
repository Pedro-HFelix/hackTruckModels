//
//  PerfilView.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 08/04/25.
//

import SwiftUI

struct PerfilView: View {
    var body: some View {
        ZStack {
            Color.lightCyan
                .ignoresSafeArea()
            
            VStack {
                VStack(alignment: .leading) {
                    HStack(alignment: .top) {
                        Image("profile image")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .cornerRadius(7.0)
                        
                        VStack(alignment: .leading) {
                            Text("Luke Skywalker")
                                .font(.title)
                                .bold()
                            Text("Ele/Dele")
                        }
                    }
                    
                    Spacer().frame(height: 20)
                    
                    HStack {
                        Text("Idade")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("20 anos")
                            .padding(.leading, 20)
                    }
                    .bold()
                    .font(.title2)
                    
                    HStack {
                        Text("Comida Favorita")
                            .frame(maxWidth: .infinity, alignment: .leading)
                        Text("Macarrão")
                            .padding(.leading, 20)
                    }
                    .bold()
                    .font(.title2)
                    Spacer().frame(height: 20)
                    
                    HStack {
                        HStack {
                            Image(systemName: "scalemass.fill")
                            Text("67.0 kg")
                        }
                        
                        HStack {
                            Image(systemName: "arrowshape.up.fill")
                            Text("1.75 cm")
                        }
                        
                        HStack {
                            Image(systemName: "heart.fill")
                            Text("IMC: 21,7")
                        }
                    }
                }
                .padding()
                .background(Color.lightBlue3.opacity(0.3))
                .cornerRadius(15)
                .shadow(radius: 10)
                .padding(20)
                
                
                VStack(alignment: .leading) {
                    HStack(alignment: .center) {
                        Image("flame")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 60, height: 60)
                            .cornerRadius(7.0)
                        
                        VStack(alignment: .leading) {
                            Text("1 day streak")
                                .font(.title)
                                .bold()
                        }
                    }
                    
                    HStack {
                        Text("Uhu! Mais um dia cuidando de você. Realize uma tarefa todos os dias para construir seu streak")
                            .frame(maxWidth: .infinity, alignment: .center)
                            .multilineTextAlignment(.center)
                    }
                    .font(.title3)
                    
                    Spacer().frame(height: 20)
                }
                .padding()
                .background(Color.lightBlue3.opacity(0.3))
                .cornerRadius(15)
                .shadow(radius: 10)
                .padding(20)
                
                Spacer()
            }
            }
        }

        
}

#Preview {
    PerfilView()
}


