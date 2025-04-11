//
//  DailyFoodViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-14 on 08/04/25.
//

import Foundation

class DailyFoodViewModel : ObservableObject{
    
    @Published var foods: [DailyFood] = []
    
    func getDaily() {
        guard let url = URL(string: "http://192.168.128.7:1880/dailyFoodGET") else {
            print("URL inválida")
            return
        }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            if let error = error {
                print("Erro na requisição: \(error)")
                return
            }
            
            guard let data = data else {
                print("Sem dados na resposta")
                return
            }
            
            do {
                let decoder = JSONDecoder()
                let dailyFoods = try decoder.decode([DailyFood].self, from: data)
                
                DispatchQueue.main.async {
                    self.foods = dailyFoods
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }.resume()
    }
    
    
    func postDailyFood(_ dailyFood: DailyFood) {
        guard let url = URL(string: "http://192.168.128.7:1880/dailyFoodPOST") else {
            print("URL inválida")
            return
        }
        
        var request = URLRequest(url: url)
        request.httpMethod = "POST"
        request.addValue("application/json", forHTTPHeaderField: "Content-Type")
        
        do {
            let jsonData = try JSONEncoder().encode(dailyFood)
            request.httpBody = jsonData
        } catch {
            print("Erro ao codificar o DailyFood: \(error)")
            return
        }
        
        URLSession.shared.dataTask(with: request) { data, response, error in
            if let error = error {
                print("Erro na requisição: \(error)")
                return
            }
            
            if let httpResponse = response as? HTTPURLResponse {
                print("Código de resposta: \(httpResponse.statusCode)")
            }
            
            if let data = data {
                print("Resposta: \(String(data: data, encoding: .utf8) ?? "")")
            }
        }.resume()
    }
    
}




