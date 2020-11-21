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
                headerView()
                    .frame(width: view.size.width, height: 270, alignment: .top)
                List(viagens) { viagem in
                    CelulaViagemViw(viagem: viagem)
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

