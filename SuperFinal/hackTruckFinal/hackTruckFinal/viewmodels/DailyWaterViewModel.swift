//
//  DailyWaterViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 09/04/25.
//

import Foundation

class DailyWaterViewModel: ObservableObject {
    @Published var dailyWater: DailyWater?

    private let baseURL = "http://192.168.128.7:1880/dailyWaterGET"

    func fetchDailyWater() {
        guard let url = URL(string: baseURL) else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Erro ao buscar dados (GET): \(error)")
                return
            }

            guard let data = data else {
                print("Nenhum dado recebido")
                return
            }

            do {
                let decoded = try JSONDecoder().decode(DailyWater.self, from: data)
                DispatchQueue.main.async {
                    self.dailyWater = decoded
                }
            } catch {
                print("Erro ao decodificar dados (GET): \(error)")
            }
        }.resume()
    }
}
