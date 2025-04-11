import SwiftUI

struct FoodView: View {
    @State private var selectPeriod: String = "Manhã"
    @State private var selectFood: String = ""
    @State private var searchText = ""
    @StateObject var viewModel = DailyFoodViewModel()
    @State var showModal = false
    
    let foods: [Food] = [
        Food(id: 1, name: "Pizza", description: "Uma deliciosa pizza com molho de tomate, queijo e pepperoni."),
        Food(id: 2, name: "Hambúrguer", description: "Um hambúrguer suculento com carne, queijo, alface e tomate."),
        Food(id: 3, name: "Sushi", description: "Peixe fresco e arroz temperado envoltos em alga."),
        Food(id: 4, name: "Macarrão", description: "Macarrão ao molho branco com cogumelos e queijo parmesão."),
        Food(id: 5, name: "Burguer Vegano", description: "Hambúrguer sem carne, com vegetais frescos e molho especial."),
        Food(id: 6, name: "Salada Caesar", description: "Alface crocante com frango grelhado, croutons e molho Caesar."),
        Food(id: 7, name: "Tapioca", description: "Massa leve de mandioca com recheios variados como queijo e coco."),
        Food(id: 8, name: "Suco de Laranja", description: "Suco natural feito com laranjas frescas."),
        Food(id: 9, name: "Água de Coco", description: "Bebida refrescante extraída do coco verde."),
        Food(id: 10, name: "Panqueca", description: "Massa leve recheada com carne moída e coberta com molho de tomate."),
        Food(id: 11, name: "Smoothie de Morango", description: "Bebida cremosa de morango com iogurte e mel."),
        Food(id: 12, name: "Frango Grelhado", description: "Peito de frango temperado e grelhado, ideal para refeições leves."),
        Food(id: 13, name: "Iogurte Natural", description: "Iogurte sem adição de açúcares, rico em probióticos."),
        Food(id: 14, name: "Arroz Integral", description: "Fonte de fibras, ideal para uma alimentação equilibrada."),
        Food(id: 15, name: "Feijão Preto", description: "Rico em proteínas e ferro, ideal para acompanhar o arroz.")
    ]

    
    var searchResults: [Food] {
        if searchText.isEmpty {
            return foods
        } else {
            return foods.filter { $0.name!.contains(searchText) }
        }
    }

    var body: some View {
        ZStack {
            // Background color
            Color.lightCyan
                .ignoresSafeArea()
            
            // Main Content
            VStack(alignment: .leading, spacing: 20) {
                VStack {
                    Text("Lista de Alimentos")
                        .font(.title)
                        .bold()
                    
                    Text("Escolha um Período")
                        .font(.title3)
                    Picker("Escolha um período", selection: $selectPeriod) {
                        ForEach(Period.allCases, id: \.rawValue) { p in
                            Text(p.rawValue).tag(p.rawValue)
                        }
                    }
                    .pickerStyle(.segmented)
                }
                
                ScrollView {
                    ForEach(searchResults) { f in
                        HStack {
                            Text(f.name!)
                                .font(.title3)
                            
                            Spacer()
                            
                            Button(action: {
                                showModal = true
                                
                                DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                                    showModal = false
                                }
                                
                                selectFood = f.name!
                                if let periodEnum = Period(rawValue: selectPeriod) {
                                    let daily = DailyFood(
                                        id: Int.random(in: 1...1000),
                                        date: DateFormatter.localizedString(from: Date(), dateStyle: .short, timeStyle: .none),
                                        foodName: selectFood,
                                        period: periodEnum
                                    )
                                    
                                    viewModel.postDailyFood(daily)
                                } else {
                                    print("Período inválido")
                                }
                            }) {
                                Image(systemName: "plus")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 16)
                                    .foregroundColor(.black)
                            }
                        }
                        .padding(8)
                        .background(Color.lightBlue3.opacity(0.3))
                        .cornerRadius(12)
                        .padding(4)
                        .shadow(color: .black.opacity(0.2), radius: 4)
                    }
                }
            }
            .padding()
            
            if showModal {
                VStack {
                    HStack {
                        Spacer()
                        Text("Comida adicionada !").bold()
                            .font(.headline)
                            .padding()
                            .background(Color.lightBlue1)
                            .foregroundColor(.white)
                            .cornerRadius(10)
                            .transition(.move(edge: .top))
                            .zIndex(1)
                        Spacer()
                    }
                    .padding(.top, 20)
                    Spacer()
                }
                .animation(.easeInOut, value: showModal)
            }
        }
    }
}

#Preview {
    FoodView()
}
