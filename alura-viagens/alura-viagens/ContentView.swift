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
                    Text("ALURA VIAGENS").bold().foregroundColor(.green).font(.custom("Avenir Black", size: 30)).padding(/*@START_MENU_TOKEN@*/.top, 37.0/*@END_MENU_TOKEN@*/).padding()
                    Text("Especial").bold().foregroundColor(.white).font(.custom("Avenir Black", size: 21)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                    Spacer()
                    Text("Brasil!").bold().foregroundColor(.white).font(.custom("Avenir Black", size: 21)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                }
                .frame(width: view.size.width, height: 190, alignment: .top)
                .background(Color.black)
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                List {
                    Text("Rio de Janeiro")
                    Text("Ceará")
                    Text("Atibaia")
                    Text("Rio de janeiro")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
