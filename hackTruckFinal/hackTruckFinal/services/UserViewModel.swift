//
//  UserViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

class ViewUser: ObservableObject {
    @Published var user: User?
    
    func GETUser() {
        guard let url = URL(string: "http://192.168.128.7:1880/userGET") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(User.self, from: data)
                DispatchQueue.main.async {
                    self?.user = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
