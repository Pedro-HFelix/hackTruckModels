import Foundation

class ViewDailyActivitie: ObservableObject {
    @Published var dailyActivitie: DailyActivitie?
    
    func GETDailyActivitie() {
        guard let url = URL(string: "http://192.168.128.7:1880/dailyActivitieGET") else {
            return
        }

        let task = URLSession.shared.dataTask(with: url) { [weak self] data, _, error in
            guard let data = data, error == nil else {
                return
            }
            do {
                let parsed = try JSONDecoder().decode(DailyActivitie.self, from: data)
                DispatchQueue.main.async {
                    self?.dailyActivitie = parsed
                }
            } catch {
                print("Erro ao decodificar: \(error)")
            }
        }

        task.resume()
    }
}
