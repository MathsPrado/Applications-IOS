//
//  PacotesViagensView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 22/11/20.
//

import SwiftUI

struct PacotesViagensView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    var body: some View {
        GeometryReader { view in
            VStack{
                Image("nova-york-1")
                    .resizable()
                    .frame(height: 135)
                    .aspectRatio(contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
                    .clipped()
                Text("NEW YORK")
                   .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 20 : 34))
                   .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width , alignment: .leading)
                Text("Aério + Hotel")
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .leading)
                Text("1 de Mar ~30 de junho")
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .leading)
                Text("à partir de")
                    .font(.custom("Avenir", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                Text("R$ 5.829")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 17 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(Color.orange)
                Text("em até 12x")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                Text("Cancelamento Grátis")
                    .font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 13 : 30))
                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/,  maxWidth: view.size.width, alignment: .trailing)
                    .foregroundColor(.green)
            }
        }.frame(width: 180, height: 280)
        
    }
}

struct PacotesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        PacotesViagensView()
    }
}

