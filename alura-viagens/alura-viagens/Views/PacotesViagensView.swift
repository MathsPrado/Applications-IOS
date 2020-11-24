//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 22/11/20.
//

import SwiftUI

struct PacotesViagensView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    //MARK: Pacote de Viagem
    var pacoteDeViagem: PacoteDeViagem
    
  //MARK: VIEW
    
    var body: some View {
        GeometryReader { view in
            VStack{
                Image(self.pacoteDeViagem.imagens.first ?? "")
                    .resizable()
                    .frame(height: 135)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipped()
                Text(self.pacoteDeViagem.titulo)
                   .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 12 : 34))
                   .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width , alignment: .leading)
                Text(self.pacoteDeViagem.descricao)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 10 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .leading)
                Text(self.pacoteDeViagem.dataValidade)
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 10 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .leading)
                Text("à partir de")
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 10 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                Text("R$ \(self.pacoteDeViagem.valor)")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(Color.orange)
                Text("em até 12x")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 11 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                Text("Cancelamento Grátis")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 11 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.green)
            }
        }.frame(width: 180, height: 320)
        .shadow(radius: 5, x: 1, y: 1 )
        .border(Color(red: 221.0/225.0, green: 221.0/225.0, blue: 221.0/225.0))
        
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView( pacoteDeViagem: pacotesDeViagens[0])
            .previewLayout(.fixed(width: 180, height: 300))
    }
}

