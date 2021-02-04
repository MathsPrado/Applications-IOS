//
//  ContentView.swift
//  InstagramCloneSwiftUI
//
//  Created by Matheus Prado on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            NavigationView{
                
            }
            .tabItem {
                Image(systemName: "house.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
