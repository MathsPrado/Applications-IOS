//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 22/11/20.
//

import SwiftUI

struct SecaoPacotesView: View {
    
    //MARK: Atributos
    
    var nomeDaSecao: String
    var pacotes: [PacoteDeViagem]
    
    //MARK: Views
    
    
    var body: some View {
        VStack(alignment: .leading){
            Text(self.nomeDaSecao)
                .font(.headline)
                .padding(.leading, 15)
                .padding(.top, 5)
            ScrollView(.horizontal, showsIndicators: false) {
                HStack{
                    ForEach(self.pacotes) { pacotes in
                        NavigationLink(destination: DetalhesViagensView(pacoteDeViagem: pacotes)
                                        .navigationBarTitle("")
                                        .navigationBarHidden(true)
                        ){
                            PacotesViagensView(pacoteDeViagem: pacotes)
                        }
                        .buttonStyle(PlainButtonStyle())
                    }
        
                }
            }
        }
        .frame( height: 350)
        .background(Color( red: 247.0, green: 247.0, blue: 247.0))
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView(nomeDaSecao: pacotesDeViagens[0].categoria.rawValue, pacotes: pacotesDeViagens)
            .previewLayout(.fixed(width: 600, height: 350))
    }
}
