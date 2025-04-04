import Foundation

class ViewMedicamento: ObservableObject {
    @Published var medicamento: Medicamento?
    
    func fetch() {
        guard let url = URL(string: "") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(Medicamento.self, from: data)
                DispatchQueue.main.async {
                    self?.medicamento = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
