//
//  SecaoPacotesView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 22/11/20.
//

import SwiftUI

struct SecaoPacotesView: View {
    var body: some View {
        VStack{
            Text("América do Norte")
            ScrollView(.horizontal, showsIndicators: false, content: {
                HStack{
                PacotesViagensView()
                PacotesViagensView()
                PacotesViagensView()
                    
                    
                }
            })
        }
    }
}

struct SecaoPacotesView_Previews: PreviewProvider {
    static var previews: some View {
        SecaoPacotesView()
    }
}
