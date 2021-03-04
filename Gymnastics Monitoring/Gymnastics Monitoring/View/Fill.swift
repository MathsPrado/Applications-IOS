//
//  form.swift
//  Gymnastics Monitoring
//
//  Created by Matheus Prado on 03/03/21.
//

import SwiftUI

struct Fill: View {

    @State var username: String = ""
    @State var isPrivate: Bool = true

    var body: some View {

            NavigationView {
                Form {
                    Section(header: Text("Matricula")) {
                        TextField("Username", text: $username)
                        VStack {
                            //[…]
                            Button("Save") {
                                 // activate theme!
                            } .frame(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        }
                    }

                    Section(header: Text("QRcode")) {
                       
                    }
                    
                }
                
                .navigationBarTitle("Cadastro")

            }
        }
}

struct form_Previews: PreviewProvider {
    static var previews: some View {
        Fill()
    }
}
