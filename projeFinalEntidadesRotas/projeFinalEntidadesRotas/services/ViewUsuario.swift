import Foundation

class ViewUsuario: ObservableObject {
    @Published var usuario: Usuario?
    
    func fetch() {
        guard let url = URL(string: "") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(Usuario.self, from: data)
                DispatchQueue.main.async {
                    self?.usuario = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
