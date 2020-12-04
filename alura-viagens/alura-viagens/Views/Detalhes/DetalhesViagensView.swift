//
//  DetalhesViagensView.swift
//  alura-viagens
//
//  Created by Matheus Prado on 29/11/20.
//

import SwiftUI

struct DetalhesViagensView: View {
    
    var pacoteDeViagem: PacoteDeViagem
    var corDaFonte = (Color(red: 77.0/255.0, green: 77.0/255.0, blue: 77.0/255.0))
    
    @Environment(\.presentationMode) var presentationMode
    
    
    var body: some View {
        
        GeometryReader { view in
            
            ScrollView(/*@START_MENU_TOKEN@*/.vertical/*@END_MENU_TOKEN@*/, showsIndicators: false) {
                
                VStack{
                    ZStack(alignment: .top){
                        Image(pacoteDeViagem.imagens[0])
                            .resizable()
                            .frame( height: 200)
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                            Image("icone-voltar").resizable().frame(width: 20, height: 25, alignment: .leading)
                                .padding(.leading, 15)
                                .padding(.top, 10)
                        }
                        .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: .infinity, alignment: .leading)
                    }
                }
                
                VStack{
                    VStack{

                        Group{
                            Text(pacoteDeViagem.titulo.uppercased())
                                .font(.custom("Avenir Black", size: 26))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                               //.padding()
                            
                            Text(pacoteDeViagem.descricao)
                                .font(.custom("Avenir", size: 16))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                                //.padding()
                            
                            Spacer()
                                .frame(height: 15)
                        }
                        
                        Text(self.pacoteDeViagem.detalhes)
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(self.corDaFonte)
                            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            //.padding()
                        Spacer()
                            .frame(height: 15)
                        
                        HStack{
                            VStack{
                                Text("Válido para o periodo de:")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                                
                                Text(self.pacoteDeViagem.dataValidade)
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                            }
                            VStack{
                                Text("R$ \(self.pacoteDeViagem.valor)")
                                    .font(.custom("Avenir Black", size: 25))
                                    .foregroundColor(.orange)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                                
                                Text("Sem taxas em até 12x")
                                    .font(.custom("Avenir Black", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .trailing)
                            }
                        }
                        
                        Divider()
                        
                        VStack{
                            Text("O que está incluso")
                                .font(.custom("Avenir Black", size: 25))
                                .foregroundColor(self.corDaFonte)
                                .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .leading)
                        }
                        
                        HStack{
                            VStack{
                                Image("icone-apartamento")
                                Text("Apartamento")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                            }
                            
                            Spacer()
                                .frame(height: 15)
                            
                            VStack{
                                Image("icone-aviao")
                                Text("Aviao")
                                    .font(.custom("Avenir", size: 14))
                                    .foregroundColor(self.corDaFonte)
                                    .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, maxWidth: view.size.width, alignment: .center)
                            }
                        }
                        .padding(.leading, 40)
                        .padding(.trailing, 40)
                        
                        Divider()
                        
                        Button(action: {
                            self.presentationMode.wrappedValue.dismiss()
                        }) {
                          Text("Escolher Opção")
                            .font(.custom("Avenir Black", size: 16))
                            .foregroundColor(Color.white)
                        }
                        .frame(width: view.size.width-50, height: 45, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/ )
                        .background(Color(red: 221.0/255.0, green: 58.0/255.0, blue: 126.0/255.0))
                        
                        
                    }
                    .padding(.leading, 20)
                    .padding(.trailing, 20)

                }
            }
        }
    }
}

struct DetalhesViagensView_Previews: PreviewProvider {
    static var previews: some View {
        DetalhesViagensView(pacoteDeViagem: pacotesDeViagens[0])
    }
}

