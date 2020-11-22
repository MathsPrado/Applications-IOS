//
//  ContentView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 14/11/20.
//

import SwiftUI

struct ContentView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        
        NavigationView {
            GeometryReader { view in
                VStack(){
                    headerView()
                        .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 280 : 350, alignment: .top)
                    List(viagens) { viagem in
                        NavigationLink( destination: MapaView(coordenada: viagem.localizacao).navigationBarTitle("Localização")){
                        CelulaViagemViw(viagem: viagem)
                        }
                    }.navigationBarTitle("")
                }
            }
            .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

