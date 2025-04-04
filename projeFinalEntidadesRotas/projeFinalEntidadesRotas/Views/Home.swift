import SwiftUI

struct ContentView: View {
    @State var checkBox : String = "square"
    @State var isCheck : Bool = false
    
    //    var alimentosManha: String?
    //    var alimentosTarde: String?
    //    var alimentosNoite: String?
    
    var body: some View {
        
        
        TabView {
            
            VStack(alignment: .leading) {
                HStack {
                    Circle()
                    Text("Eu")
                }
                .padding(8)
                .frame(maxWidth: .infinity, maxHeight: 60 , alignment: .leading)
                .background(Color.green.opacity(0.4))
                ScrollView {
                    VStack(alignment: .leading) {
                        Text("Atividades diárias:").bold()
                        
                        HStack {
                            Image(systemName: "minus")
                            Spacer()
                            Text("Água").bold()
                            Spacer()
                            Image(systemName: "plus")
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                        .padding()
                        .background(Color.blue.opacity(0.4))
                        
                        
                        HStack {
                            Image(systemName: checkBox).onTapGesture {
                                isCheck.toggle()
                                checkBox = isCheck ? "checkmark.square" : "square"
                            }
                            Spacer()
                            Text("Atividades Físicas").bold()
                            Spacer()
                        }
                        .frame(width: UIScreen.main.bounds.width * 0.8)
                        .padding()
                        .background(Color.yellow.opacity(0.4))
                        
                        Divider().padding()
                        
                        
                        Text("Manhã:").bold().font(.system(size: 28))
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Tarde:").bold().font(.system(size: 28))
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Noite:").bold().font(.system(size: 28))
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Exemplo")
                        Text("Exemplo")
                        Spacer()
                        
                    }.padding()
                }
            }
            .tabItem {
                Label("Início", systemImage: "house")
            }
            
            FoodView()
                .tabItem {
                    Label("Alimentação", systemImage: "fork.knife")
                }
            
            medicineView()
                .tabItem {
                    Label("Medicamentos", systemImage: "pill.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Perfil", systemImage: "person.crop.circle")
                }
        }
    }
}

#Preview {
    ContentView()
}

