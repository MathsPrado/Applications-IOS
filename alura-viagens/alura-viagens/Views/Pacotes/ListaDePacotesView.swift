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
        NavigationView {
            List {
                ForEach(categorias.keys.sorted(), id: \.self){
                    chave in
                    SecaoPacotesView(nomeDaSecao: chave, pacotes: self.categorias[chave]!)
                }
            }
            .navigationTitle("Pacotes")
            .padding(.leading, -10)
            .padding(.trailing, -10)
            

        }
        .onAppear{
            UITableView.appearance().separatorStyle = .none
            UITableView.appearance().backgroundColor = UIColor(red: 247.0/255, green: 247.0/255, blue: 247.0/255, alpha: 1)

        }
        .onDisappear {
                UITableView.appearance().separatorStyle = .singleLine
                UITableView.appearance().backgroundColor = nil
            UINavigationBar.appearance().backgroundColor = nil
            
        }
    }
}
struct ListaDePacotesView_Previews: PreviewProvider {
    static var previews: some View {
        ListaDePacotesView()
    }
}
