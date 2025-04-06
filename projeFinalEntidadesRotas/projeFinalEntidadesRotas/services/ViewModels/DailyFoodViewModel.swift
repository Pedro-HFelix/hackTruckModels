import Foundation

class ViewDailyFood: ObservableObject {
    @Published var dailyFood: DailyFood?
    
    func fetch() {
        guard let url = URL(string: "") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(DailyFood.self, from: data)
                DispatchQueue.main.async {
                    self?.dailyFood = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
