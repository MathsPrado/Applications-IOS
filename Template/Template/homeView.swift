//
//  homeView.swift
//  Template
//
//  Created by Matheus Prado on 30/11/20.
//

import SwiftUI

struct homeView: View {
    
    @State var dark = false
    @State var show = false
    
    var body: some View {
        ZStack(alignment: .leading) {
            
            GeometryReader{_ in
                
                VStack{
                    Text("Dark Mode Menu")
                }
            }
            MenuView(dark: self.$dark, show: self.$show)
        }
    }
}

struct homeView_Previews: PreviewProvider {
    static var previews: some View {
        homeView()
    }
}
