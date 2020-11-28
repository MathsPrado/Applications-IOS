//
//  HeaderView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 16/11/20.
//

import Foundation
import SwiftUI

struct headerView: View {
    
    @Environment(\.horizontalSizeClass) var horizontalSizeClass
    
    var body: some View {
        GeometryReader { view in
            VStack{
                VStack() {
                    Text("ALURA VIAGENS").bold().foregroundColor(.black).font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 28 : 45)).padding().padding()
                    Text("Especial").bold().foregroundColor(.white).font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 30 : 45)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                    Text("Brasil!").bold().foregroundColor(.white).font(.custom("Avenir Black", size: self.horizontalSizeClass == .compact ? 30 : 45)).frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity,  alignment: .leading).padding(.leading,30)
                }
                .frame(width: view.size.width, height: self.horizontalSizeClass == .compact ? 250 : 310, alignment: .top)
                .background(Color.gray)
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Hoteis")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 27 : 40))
                            .foregroundColor(.white)
                            .cornerRadius(50)
                }
                    .frame(width: self.horizontalSizeClass == .compact ? 120 : 180, height: 60)
                    .background(Color.blue)
                    .offset(x: self.horizontalSizeClass == .compact ? 40 : view.size.width/4)
                    Spacer()
                    Button(action: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Action@*/{}/*@END_MENU_TOKEN@*/) {
                        Text("Pacotes")
                            .font(.custom("Avenir Medium", size: self.horizontalSizeClass == .compact ? 27 : 40))
                            .foregroundColor(.white)
                    }
                    .frame(width: self.horizontalSizeClass == .compact ? 120 : 180, height: 60)
                    .background(Color.orange)
                    .offset(x: self.horizontalSizeClass == .compact ? -60 : -view.size.width/4)
                }
                .offset(y: self.horizontalSizeClass == .compact ? -25 : -25)
            }
        }
    }
}

struct HeaderView_Previews: PreviewProvider {
    
    static var previews: some View{
        Group {
            headerView()
                .environment(\.horizontalSizeClass, .compact)
                .previewLayout(.fixed(width: 400, height: 350))
            headerView()
                .environment(\.horizontalSizeClass, .regular)
                .previewLayout(.fixed(width: 835, height: 400))
        }
        
    }
}
