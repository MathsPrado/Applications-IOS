//
//  DetalhesViagensView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 29/11/20.
//

import SwiftUI

struct DetalhesViagensView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    
    var body: some View {
        
        GeometryReader { view in
            VStack{
                Image(pacoteDeViagem.imagens[0])
                    .resizable()
                    .frame( height: 200)
                Text(pacoteDeViagem.titulo.uppercased())
                    .font(.custom("Avenir Black", size: 26))
                    .foregroundColor(Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
            }
        }
    }
}

struct DetalhesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagensView(pacoteDeViagem: pacotesDeViagens[0])
    }
}
