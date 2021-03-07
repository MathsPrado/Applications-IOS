//
//  Navigation.swift
//  Gymnastics Monitoring
//
//  Created by Matheus Prado on 03/03/21.
//

import SwiftUI

struct Navigation: View {
    
    @State private var selection = 0
    @State private var isShowingScanner = false

    
    var body: some View {
        NavigationView {
            TabView(selection: $selection) {
//                List(1...10, id: \.self) { index in
//                    NavigationLink(
//                        destination: Text("teste #\(index) Details"),
//                        label: {
//                            Text("Item #\(index)")
//                                .font(.system(size: 20, weight: .bold, design: .rounded))
//                        })
//                }
//                .tabItem {
//                    Image(systemName: "house.fill")
//                    Text("Home")
//                }
//                .tag(0)
         
                Fill()
                    .onTapGesture {
                       print("Call Qrcode")
                    }
                    .tabItem {
                        Image(systemName: "star")
                        Text("Cadastro")
                    }
                    
                    .tabItem {
                        Image(systemName: "star")
                        Text("Cadastro")
                    }

                         
                List(0...22, id: \.self) { index in
                    NavigationLink(
                        destination: Text("Departamento #\(index)"),
                        label: {
                            Text("Departamento #\(index)")
                                .font(.system(size: 20, weight: .bold, design: .rounded))
                        })
                }
                .tabItem {
                    Image(systemName: "video.circle.fill")
                    Text("Home")
                }
                .tag(2)
                
            }
            .accentColor(.red)
            .onAppear() {
                UITabBar.appearance().barTintColor = .white
            }
         
            .navigationTitle("GYM")
        }
    }
}

struct Navigation_Previews: PreviewProvider {
    static var previews: some View {
        Navigation()
    }
}
