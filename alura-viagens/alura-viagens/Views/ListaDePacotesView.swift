//
//  ListaDePacotesView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 23/11/20.
//

import SwiftUI

struct ListaDePacotesView: View {
    
    //MARK: ATRIBUTO
    
    var categorias : [String: [PacoteDeViagem]] {
        Dictionary(grouping: pacotesDeViagens, by: { $0.categoria.rawValue})
    }
    
    var body: some View {
        List {
            ForEach(categorias.keys.sorted(), id: \.self){
                chave in
                SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
            }
        }
    }
}

struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
