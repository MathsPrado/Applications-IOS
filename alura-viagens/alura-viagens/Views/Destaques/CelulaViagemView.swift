//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 21/11/20.
//

import SwiftUI

struct CelulaViagemViw: View {
    var viagem: Viagem;
    @Environment(\.horizontalSizeClass) var
        horizontalSizeClass
    
    var body : some View{
        VStack(alignment: .leading){
            Text(viagem.titulo)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 20 : 34))
                .padding(8.0)
            Image(viagem.imagem)
                .resizable()
                .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                .frame(height:self.horizontalSizeClass == .compact ? 250 : 300)
                .clipped()
            
            HStack{
                Text(viagem.quantidadeDeDias)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 34))
                Spacer()
                Text(viagem.valor)
                .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 14 : 34))
            }
        }
    }
}
struct HeaderPreview: PreviewProvider {
    static var previews: some View{
        CelulaViagemViw(viagem: viagens[0])
            
    }
}
