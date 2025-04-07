//
//  MedicineViewModel.swift
//  hackTruckFinal
//
//  Created by Turma01-22 on 07/04/25.
//

import Foundation

class ViewMedicine: ObservableObject {
    @Published var medicine: Medicine?
    
    func GETMedicine() {
        guard let url = URL(string: "http://192.168.128.7:1880/medicineGET") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(Medicine.self, from: data)
                DispatchQueue.main.async {
                    self?.medicine = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
