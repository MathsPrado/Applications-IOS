//
//  MenuView.swift
//  Template
//
//  Created by Matheus Prado on 30/11/20.
//

import SwiftUI

struct MenuView: View {

    @Binding var dark : Bool
    @Binding var show : Bool
    
    var body: some View {
        VStack{
            
            HStack{
                Button(action : {
                }){
                    Image("back")
                        .resizable()
                        .frame(width: 12, height: 20)
                }
                
                Spacer()
                
                Button(action : {
                }){
                    Image(systemName: "square.and.pencil")
                        .font(.title)
                }
            }
            .padding(.top)
            .padding(.bottom, 25)
            
            Image("me")
                .resizable()
                .frame(width: 80, height: 80)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            
            VStack(spacing: 12){
                Text("MathsPrado")
                
                Text("Developer")
                    .font(.caption)
            }
            .padding(.top, 25)
            
            Spacer()
        }
        foregroundColor(.primary)
        .padding(.horizontal, 20)
        .frame(width: UIScreen.main.bounds.width / 1.5)
        .background((self.dark ? Color.black : Color.white ).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
            .overlay(Rectangle().stroke(Color.primary, lineWidth: 2).shadow(radius: 3).edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/))
    }
}

//struct MenuView_Previews: PreviewProvider {
 //   static var previews: some View {
       // MenuView()
  //  }
//}
