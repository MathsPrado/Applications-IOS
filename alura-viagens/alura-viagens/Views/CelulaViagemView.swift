//
//  CelulaViagemView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 21/11/20.
//

import SwiftUI

struct CelulaViagemViw: View {
    var viagem: Viagem;
    
    var body : some View{
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
struct HeaderPreview: PreviewProvider {
    static var previews: some View{
        CelulaViagemViw(viagem: viagens[0])
            
    }
}
