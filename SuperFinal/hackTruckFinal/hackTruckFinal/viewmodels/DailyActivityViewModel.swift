//
//  DailyActivityViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 08/04/25.
//

import Foundation

class DailyActivityViewModel: ObservableObject {
    @Published var dailyActivity: DailyActivity?
    
    func GETDailyActivitie() {
        guard let url = URL(string: "http://192.168.128.7:1880/dailyActivitieGET") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(DailyActivity.self, from: data)
                DispatchQueue.main.async {
                    self?.dailyActivity = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
