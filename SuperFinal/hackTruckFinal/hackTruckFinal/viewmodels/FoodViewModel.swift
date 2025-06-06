//
//  FoodViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 08/04/25.
//

import Foundation

class FoodViewModel: ObservableObject {
    @Published var food: Food?
    
    func GETFood() {
        guard let url = URL(string: "http://192.168.128.7:1880/foodGET") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(Food.self, from: data)
                DispatchQueue.main.async {
                    self?.food = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
