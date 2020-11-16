//
//  ContentView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 14/11/20.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { view in
            VStack(){
                VStack() {
                    Text("ALURA VIAGENS").bold().foregroundColor(.black).font(.custom("Avenir Black", size: 30)).padding().padding()
                    Text("Especial").bold().foregroundColor(.white).font(.custom("Avenir Black", size: 21)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                    Text("Brasil!").bold().foregroundColor(.white).font(.custom("Avenir Black", size: 21)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                }
                .frame(width: view.size.width, height: 220, alignment: .top)
                .background(Color.gray)
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hoteis")
                            .font(.custom("Avenir Medium", size: 27))
                            .foregroundColor(.white)
                            .cornerRadius(40)
                }
                    .frame(width: 120, height: 50)
                    .background(Color.blue)
                    .offset(x: 60)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: 27))
                            .foregroundColor(.white)
                    }
                    .frame(width: 120, height: 50)
                    .background(Color.orange)
                    .offset(x: -60)
                }
                .offset(y: -25)
                
                List(viagens) { viagem in
                    VStack(alignment: .leading){
                        Text(viagem.titulo)
                            .padding(7.0)
                        Image(viagem.imagem)
                            .resizable()
                            .frame(height:250)
                        
                        HStack{
                            Text(viagem.quantidadeDeDias)
                            Spacer()
                            Text(viagem.valor)
                        }
                    }
                    

                }
            }
        }
        .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

